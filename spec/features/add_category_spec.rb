require 'rails_helper'

describe "the add a category process" do
  it "adds a new category" do
    visit categories_path
    click_on 'Add Category'
    fill_in 'Name', :with => 'Javascript'
    fill_in 'Description', :with => 'Language for websites'
    click_on 'Create Category'
    expect(page).to have_content 'Coding Skills'
  end

  it "gives error when no name is entered" do
    visit new_category_path
    click_on 'Create Category'
    expect(page).to have_content 'errors'
  end
end
