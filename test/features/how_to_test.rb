require 'test_helper'

feature 'List page' do
  scenario 'should make list' do
    visit root_path

    click_on 'New List'
    fill_in 'Title', with: 'Grocery Store'
    click_on 'Create List'
    page.must_have_content 'List was successfully created.'
  end

  scenario 'should write step in list' do
    visit '/lists/1/steps'
    fill_in 'Body', with: 'Tomatoes'
    click_on 'Create Step'
    page.must_have_content 'Step was successfully created'
  end
end
