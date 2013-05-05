require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new page on #new" do
    get :new
    assert_response :success
  end

  test "should create new users on #create" do
    assert_difference('User.count', 1) do
      post :create, user: user_attributes
    end

    assert_redirected_to root_url
  end

  def user_attributes
    users(:one).attributes.except(:password_digest).merge(email: "a@heapsource.com", username: "guille",
                                                          password: '123456', password_confirmation: '123456')
  end
end
