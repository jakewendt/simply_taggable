class Tag < ActiveRecord::Base
#	belongs_to :user
	belongs_to :tagger, :polymorphic => true, :counter_cache => true
	has_many :taggings, :dependent => :destroy
	has_many :taggables, :through => :taggings

	validates_presence_of :tagger_id, :tagger_type
	validates_presence_of :name
	validates_length_of :name, :minimum => 1
	validates_uniqueness_of :name, :scope => [:tagger_id, :tagger_type]

	class MultipleTagsFound < StandardError
		attr_reader :message;
		def initialize(message="Multiple tags found")
			@message = message
		end
	end

	def before_save
		name.squish!
	end

	def self.find_or_create(conditions={})
		tags = find(:all, :conditions => conditions)
		case tags.length
			when 0 
				self.create!(conditions)
			when 1 
				tags[0]
			else raise MultipleTagsFound.new("Multiple tags found matching #{conditions.inspect}.")
		end
	end

end
