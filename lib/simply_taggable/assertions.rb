module SimplyTaggable::Assertions
	def self.included(base)
		base.extend(ClassMethods)
	end
	module ClassMethods
		def assert_simply_taggable

#			assert_should_have_many :taggings
#			assert_should_have_many :tags, :as => :taggable

			test "should be simply taggable" do
				assert model_name.constantize.new.respond_to?(:tags)
				assert model_name.constantize.new.respond_to?(:taggings)
			end
		end
		def assert_simply_taggable_tagger

#	add this to simply_testable
#			assert_should_have_many :tags, :as => :tagger

			test "should be simply taggable tagger" do
				assert model_name.constantize.new.respond_to?(:tags)
#				assert model_name.constantize.new.respond_to?(:taggings)
			end
		end
	end
	module InstanceMethods
	end
end
require 'active_support'
require 'active_support/test_case'
ActiveSupport::TestCase.send(:include,SimplyTaggable::Assertions)
