require 'rails_helper'

describe "the delete a category process" do
  it "deletes a new category" do
    visit categories_path
    click_on 'Add Category'
    fill_in 'Name', :with => 'Javascript'
    fill_in 'Description', :with => 'Language for websites'
    click_on 'Create Category'
    click_on 'Javascript'
    click_on 'Delete Category'
    expect(page).to have_content 'Coding Skills'
  end
end
