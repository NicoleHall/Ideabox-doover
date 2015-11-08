require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  test 'registered user can login in' do
    user_is_created_and_logged_in

    assert page.has_content?("Hello MarloMajor")

  end

  test 'user does not exist shows error' do
    visit login_path
    fill_in "Username", with: "Nobody"
    fill_in "Password", with: "password"
    assert page.has_content?("Login")
    click_button "Login"
    assert page.has_content?("Login")
    save_and_open_page
    assert page.has_content?("Incorrect Username or Password")
  end

  # test for if user does not exist
  # and test for if user name and / or pw is wrong
end
