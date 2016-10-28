require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "it extracts the name from the email address" do
    user = User.find(1)
    assert user.name == 'alice'
  end

  test "it returns the email address if the name could not be extracted" do
    user = User.find(2)
    assert user.name == user.email
  end
end
