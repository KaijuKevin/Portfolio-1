require 'rails_helper'

describe "the edit a category process" do
  it "edits a category" do
    visit categories_path
    click_on 'Add Category'
    fill_in 'Name', :with => 'Javascript'
    fill_in 'Description', :with => 'Language for websites'
    click_on 'Create Category'
    click_on 'Javascript'
    click_on 'Edit Category'
    fill_in 'Name', :with => 'name' 'Description', :with => 'description'
    click_on 'Update Category'
    expect(page).to have_content 'name'
  end
end
