require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should show new page on #new" do
    get :new
    assert_response :success
  end

  test "should create a session on #create" do
    post :create, { username: "guilleiguaran@gmail.com", password: "123456" }

    assert session[:user_id]
    assert_redirected_to root_url
  end

  test "should get destroy a session on #destroy" do
    delete :destroy, {}, { user_id: users(:one).id }

    assert_nil session[:user_id]
    assert_redirected_to root_url
  end
end
