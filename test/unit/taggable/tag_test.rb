require 'test_helper'

class SimplyTaggable::TagTest < ActiveSupport::TestCase

	assert_should_initially_belong_to :tagger, :polymorphic => true
	assert_should_have_many :taggings

	assert_should_require :name
	assert_should_not_protect_attribute :name
	assert_should_protect_attribute :tagger_id
	assert_should_protect_attribute :tagger_type

end
