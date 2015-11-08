require 'test_helper'

class AdminCategoriesTest < ActionDispatch::IntegrationTest
  test 'admin can login' do
  admin = User.create(username: "admin",
                      password: "password",
                      role: 1)
  end
end
