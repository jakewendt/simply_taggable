require 'test_helper'

class SimplyTaggable::TagTest < ActiveSupport::TestCase

#	Try to make this work without :User
#	assert_should_belong_to :tagger, :class_name => :User
	assert_should_require :name
	assert_should_not_protect_attribute :name
	assert_should_protect_attribute :tagger_id
	assert_should_protect_attribute :tagger_type

end
