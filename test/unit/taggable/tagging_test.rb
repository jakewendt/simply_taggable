require 'test_helper'

class SimplyTaggable::TaggingTest < ActiveSupport::TestCase

	assert_should_belong_to :tag
#	Try to make this work without :post
#	assert_should_belong_to :taggable, :class_name => :Post

end
