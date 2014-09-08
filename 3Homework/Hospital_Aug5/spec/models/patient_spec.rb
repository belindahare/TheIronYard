require 'rails_helper'
RSpec.describe Hospital, :type => :model do
  subject do 
    Patient.new({
      first_name: "Belinda",
      last_name: "Hare",
      dob: "Fri, 04 Nov 1988",
      description: "fever",
      gender: "female"
      })
  end
  describe "first_name" do
    it "should return the first name of a patient" do
      expect(subject.first_name).to include("Belinda")
    end
    it "should not return empty strings for Patient" do
      expect(subject.first_name).not_to be ("")
    end
  end
  describe "last_name" do
    it "should return the last name of a patient" do
      expect(subject.last_name).to include("Hare")
    end
    it "should not return empty string for Patient last name" do
      expect(subject.last_name).not_to be ("")
    end
  end

  describe "dob" do
  #   it "should return the dob of the patient" do
  #     expect(subject.dob).to include("Fri, 04 Nov 1988")
  #   end
    it "should not return an empty string for patient date of birth" do
      expect(subject.dob).not_to be ("")
    end
  end


  describe "description" do
    it "should return the reason for patient's visit" do
      expect(subject.description).to include("fever")
    end
    it "should not return an empty string for description" do
      expect(subject.description).not_to be ("")
    end
  end

  describe "gender" do
    it "should return the gender of the patient" do
      expect(subject.gender).to include("female")
    end
    it "should not return an empty string for patient gender" do
      expect(subject.gender).not_to be ("")
    end
  end

end