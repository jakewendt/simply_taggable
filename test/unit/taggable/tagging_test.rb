require 'test_helper'

class SimplyTaggable::TaggingTest < ActiveSupport::TestCase

	assert_should_belong_to :tag
	assert_should_belong_to :taggable, :polymorphic => true

end
