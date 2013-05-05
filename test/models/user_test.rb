require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#find_by_email_or_username with email" do
    assert_equal 'guilleiguaran', User.find_by_email_or_username('guilleiguaran@gmail.com').username
  end

  test "#find_by_email_or_username with username" do
    assert_equal 'guilleiguaran@gmail.com', User.find_by_email_or_username('guilleiguaran').email
  end
end
