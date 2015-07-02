require 'rails_helper'

describe "the edit a project process" do
  it "edits a project" do
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

  it "shows error when editing a project" do
    visit categories_path
    click_on 'Add Category'
    fill_in 'Name', :with => 'Javascript'
    fill_in 'Description', :with => 'Language for websites'
    click_on 'Create Category'
    click_on 'Javascript'
    click_on 'Add a Project'
    click_on 'Create Project'
    expect(page).to have_content 'errors'
  end
end
