module SimplyTaggable::Assertions
	def self.included(base)
		base.extend(ClassMethods)
	end
	module ClassMethods
		def assert_simply_taggable
			test "should be simply taggable" do
				assert true
			end
		end
	end
	module InstanceMethods
	end
end
require 'active_support'
require 'active_support/test_case'
ActiveSupport::TestCase.send(:include,SimplyTaggable::Assertions)
