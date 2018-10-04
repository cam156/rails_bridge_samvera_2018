require "rails_helper"

RSpec.feature "Widget management", :type => :feature, js: true do
  let (:tree) { Tree.create }

  scenario "User creates a new widget" do
    visit "/oranges"

    click_on 'New Orange'

    fill_in "Name", :with => "Cara Cara"
    fill_in "Tree", :with => tree.id
    click_button "Create Orange"

    expect(page).to have_text("Orange title: Cara Cara")
    
    click_link 'Edit'
    fill_in "Name", with: 'Pink Orange'
    click_button 'Update Orange'

    expect(page).to have_text("Orange title: Pink Orange")

    click_link 'Back'
    expect(page).to have_text('Oranges')
    
    accept_alert do
      click_link 'Destroy'
    end
    
    expect(page).to have_text('Orange was successfully destroyed.')
  end
end
