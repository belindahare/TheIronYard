require 'rails_helper'

RSpec.describe ApplicationHelper, :type => :helper do
  
  it "should check if there is a doctor assigned to patient" do
    Hospital.new
    expect(helper.patients_assigned_doctor(hospital, patient, doctor)).to be ("")
    # expect(helper.patients_assigned_doctor("patient")).to be ("patient")
    # expect(helper.patients_assigned_doctor("doctor")).to be ("doctor")
  end


end

