require File.dirname(__FILE__) + '/../test_helper'

class PostTest < ActiveSupport::TestCase

	assert_simply_taggable

	test "should test something" do
		Post.new
	end

end
