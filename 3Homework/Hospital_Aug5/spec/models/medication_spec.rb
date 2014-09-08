require 'rails_helper'
RSpec.describe Hospital, :type => :model do
  subject do 
    Medication.new({
      name: "Asprin",
      description: "25 mg"
      })
  end
  describe "name" do
    it "should return the name of the patient's medication" do
      expect(subject.name).to include("Asprin")
    end
    it "should not return empty strings the patient's medication" do
      expect(subject.name).not_to be ("")
    end
  end
  describe "description" do
    it "should return the description of the medication" do
      expect(subject.description).to include("25 mg")
    end
    it "should not return an empty string for description" do
      expect(subject.description).not_to be ("")
    end
  end

end