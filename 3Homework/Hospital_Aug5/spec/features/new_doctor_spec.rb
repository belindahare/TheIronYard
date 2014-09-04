require 'rails_helper'

describe "add doctor to hospital", type: :feature, js: true do
  it "should allow user to add a doctor to the hospital staff" do
    visit root_path
    visit root_path
    click_link 'Log In'
    click_link 'Sign up'
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button 'Sign up'
    visit root_path
    click_link "Add New Hospital To Network"
    fill_in "Name", with: "Test Hospital"
    fill_in "City and State", with: "Redlands, CA"
    click_button "Create Hospital"
    visit root_path
    click_link "Test Hospital"
    fill_in "Name", with: "Dr. Latista"
    click_button "Create Doctor"
    expect(page).to have_content("Dr. Latista")

  end
end