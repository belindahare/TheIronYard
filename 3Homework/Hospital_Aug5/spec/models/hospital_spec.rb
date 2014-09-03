require 'rails_helper'
RSpec.describe Hospital, :type => :model do
  subject do 
    Hospital.new({
      name: "MedicalCenter",
      description: "location"
      })
  end
  describe "name" do
    it "should return the name of a hospital" do
      expect(subject.name).to include("MedicalCenter")
    end
    it "should not return empty strings for Hospital" do
      expect(subject.name).not_to be ("")
    end
  end
  describe "description" do
    it "should return the location of a hospital" do
      expect(subject.description).to include("location")
    end
    it "should not return an empty string for description" do
      expect(subject.description).not_to be ("")
    end
  end

end