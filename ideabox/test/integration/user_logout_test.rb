require 'test_helper'

class UserLogoutTest < ActionDispatch::IntegrationTest
  test 'user can log out after logging in' do
    user_is_created_and_logged_in

    click_link 'Logout'
    
    refute page.has_content?("Hello MarloMajor")
  end
end
