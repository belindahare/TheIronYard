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
    click_link "Admit New Patient"
    fill_in "First name", with: "First"
    fill_in "Last name", with: "Last"
    select('2013', :from => 'patient_dob_1i')
    select('August', :from => 'patient_dob_2i')
    select('4', :from => 'patient_dob_3i')
    fill_in "Enter reason for patient's visit", with: "fever"
    choose('patient_gender_male')
    click_button "Create Patient"
    visit root_path
    click_link "Test Hospital"
    expect(page). to have_content "First Last"

    end
end