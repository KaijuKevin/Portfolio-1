require 'rails_helper'

describe "the add a project process" do
  it "adds a new project" do
    visit categories_path
    click_on 'Add Category'
    fill_in 'Name', :with => 'Javascript'
    fill_in 'Description', :with => 'Language for websites'
    click_on 'Create Category'
    click_on 'Javascript'
    click_on 'Add a Project'
    fill_in 'Name', :with => 'project' 'link', :with => 'Link' 'Description', :with => 'Language for websites'
    click_on 'Create Project'
    expect(page).to have_content 'Javascript'
  end
end
