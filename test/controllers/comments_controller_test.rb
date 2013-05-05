require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should create a new issue on #create" do
    assert_difference('Comment.count') do
      post :create, { issue_id: issues(:one), comment: { content: 'First comment' } }, { user_id: users(:one).id }
    end
  end
end
