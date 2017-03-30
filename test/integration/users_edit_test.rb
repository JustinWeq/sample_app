require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def  setup
    @user = users(:jeremy)
  end
  
  test "unsuccessfull edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params:{user:{name: "",email: "foo@invalid",password:"foo",password_combination:"bar"}}
    assert_not_template 'user/edit'
  end
  
end
