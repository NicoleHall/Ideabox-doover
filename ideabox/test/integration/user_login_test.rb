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
    assert page.has_content?("Incorrect Username or Password")
  end

  test 'if user enters wrong username shows error' do
    user = User.create(username: "MarloMajor", password: "password")

    visit login_path
    fill_in "Username", with: "notMarloMajor"
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Incorrect Username or Password")
  end

  test 'if user enters wrong password it shows error' do
    user = User.create(username: "MarloMajor", password: "password")

    visit login_path
    fill_in "Username", with: "MarloMajor"
    fill_in "Password", with: "incorrectpassword"
    click_button "Login"

    assert page.has_content?("Incorrect Username or Password")
  end


end
