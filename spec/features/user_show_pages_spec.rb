require 'rails_helper'

feature "View user's profile" do
  scenario "without signing in" do
    position = FactoryGirl.create(:position)
    user = position.user
    stock = position.stock

    visit user_path(user)
    expect(page).to have_content(user.email)
    expect(page).to have_content(user.total_value)
    expect(page).to have_content(position.quantity)
    expect(page).to have_content(stock.ticker)
  end
end
