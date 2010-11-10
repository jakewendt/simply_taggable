module SimplyTaggable::Assertions
	def self.included(base)
		base.extend(ClassMethods)
	end
	module ClassMethods

		def assert_simply_taggable

			test "should be simply taggable" do
				assert model_name.constantize.new.respond_to?(:tags)
				assert model_name.constantize.new.respond_to?(:taggings)
#				self.class.assert_should_have_many :taggings
#				self.class.assert_should_have_many :tags, :polymorphic => true
			end

		end

		def assert_simply_taggable_tagger

			test "should be simply taggable tagger" do
#				self.class.assert_should_have_many :tags, :polymorphic => true

				assert model_name.constantize.new.respond_to?(:tags)
#				assert model_name.constantize.new.respond_to?(:taggings)
			end

		end
	end

end
require 'active_support'
require 'active_support/test_case'
ActiveSupport::TestCase.send(:include,SimplyTaggable::Assertions)
