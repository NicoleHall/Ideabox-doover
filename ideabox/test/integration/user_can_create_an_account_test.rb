require 'test_helper'

class GuessCreateAccountTest < ActionDispatch::IntegrationTest

  test 'user can create account' do
    visit new_user_path
    fill_in "Username", with: "MarloMajor"
    fill_in "Password", with: "password"
    click_button "Create Account"

    assert page.has_content?("Hello MarloMajor")
  end
end
