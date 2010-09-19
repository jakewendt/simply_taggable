module SimplyTaggable::Assertions
	def self.included(base)
		base.extend(ClassMethods)
	end
	module ClassMethods
	end
	module InstanceMethods
	end
end
ActiveSupport::TestCase.send(:include,SimplyTaggable::Assertions)
