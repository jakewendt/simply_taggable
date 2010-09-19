module SimplyTaggable::Base
	def self.included(base)
		base.extend(ClassMethods)
	end

	module ClassMethods
		def simply_taggable

#	add some options like :by => :user 
#	in case User isn't the model of choice

			include SimplyTaggable::Base::InstanceMethods

			has_many :taggings, 
				:as => :taggable, 
				:dependent => :destroy

			has_many :tags, 
				:through => :taggings

			attr_writer :tag_names
			attr_accessible :tag_names
			after_save :assign_tags

		end
	end

	module InstanceMethods

		def tag_names
			@tag_names || tags.map(&:name).join(', ')
		end

	private
	
		def assign_tags
			if @tag_names
				self.tags = @tag_names.names_to_array.map do |name|
					Tag.find_or_create({
						:name => name.squish,
						:user_id => self.user_id
					}) if !name.blank?
				end
			end
		end

	end 
end
ActiveRecord::Base.send(:include, SimplyTaggable::Base)
