require 'rails_helper'

describe "user login", type: :feature, js: true do
  it "should allow user login" do
    visit root_path
    click_link 'Log In'
    click_link 'Sign up'
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button 'Sign up'
    visit root_path
    click_link 'Log Out'
    visit root_path
    click_link 'Log In'
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    expect(page).to have_content("Account")
    expect(page).to have_content("Log Out")
    expect(page).not_to have_content("Log In")

  end
end