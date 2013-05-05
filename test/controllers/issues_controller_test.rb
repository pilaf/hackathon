require 'test_helper'

class IssuesControllerTest < ActionController::TestCase
  test "should get issues list on #index" do
    get :index

    assert assigns(:issues)
    assert_response :success
  end

  test "should get on issue on #show" do
    get :show, id: issues(:one)

    assert assigns(:issue)
    assert_response :success
  end

  test "should get new issue page" do
    get :new, {}, { user_id: users(:one).id }
    assert_response :success
  end

  test "should create a new issue on #create" do
    assert_difference('Issue.count') do
      post :create, { issue: { title: 'First', description: 'First issue' } }, { user_id: users(:one).id }
    end

    assert_response :success
  end
end
