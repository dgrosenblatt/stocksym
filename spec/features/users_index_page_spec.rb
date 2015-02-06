require 'rails_helper'

feature "Visiting the users index" do
  scenario "viewing the leaderboard" do
    FactoryGirl.create(:position)
    visit "/users"

    expect(page).to have_content "@example.com"
    expect(page).to have_content "Total Value"
  end
end
