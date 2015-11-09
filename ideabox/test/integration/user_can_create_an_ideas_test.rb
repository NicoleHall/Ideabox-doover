require 'test_helper'

class UserCanCreateIdeasTest < ActionDispatch::IntegrationTest
  test 'registered user can create an idea' do
    user_is_created_and_logged_in

    visit new_idea_path

    fill_in "Idea name", with: "Electric Car"
    fill_in "Idea description", with: "Apple Car"
    click_button "Create Idea"

    idea = Idea.create!(idea_name: "Electric Car", idea_description: "Electric Car")
save_and_open_page
    assert page.has_content? "Good Idea!"
    assert page.has_content? "Electric Car"
    assert page.has_content? "Apple Car"
    assert current_path, idea_path(:id)
  end
end
