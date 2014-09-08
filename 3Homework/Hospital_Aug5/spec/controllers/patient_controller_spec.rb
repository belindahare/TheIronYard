require 'rails_helper'

describe PatientsController do
  let(:hospital) {Hospital.create(name: "TestHospital", description: "Charleston, SC")}
  let(:patient) {Patient.create(first_name: "Belinda", last_name: "Hare", dob: "1988-11-04", description: "fever", gender: "female")}


    it "should add a new patient to the database" do
      sign_in
      get :new, hospital_id: hospital, id: patient
    # expect(assigns(:patient).class).to eq(Patient)
      expect(assigns(:patient).new_record?).to eq(true)
    end


  describe "GET #show" do
    it "should show a patient page" do
      sign_in
      get :show, hospital_id: hospital, id: patient
      expect(assigns(:patient).class).to eq(Patient)
      expect(assigns(:patient)).to eq(patient)
    end
  end

  describe "POST #create" do
    it 'successful creation' do
      sign_in
      expect {
        post :create, hospital_id: hospital, id: patient, hospital: {name: "TestHospital", description: "Charleston, SC"}, patient: {first_name: "Belinda", last_name: "Hare", dob: "1988-11-04", description: "fever", gender: "female"}}.to change(Patient, :count).by(2)
    end
  end

  describe "GET #edit" do
    #this needs the let block of code so the test can create a test hospital and try to edit it
    it 'should find an object' do
      sign_in
      get :edit, hospital_id: hospital, id: patient
      expect(assigns(:hospital)).to eq(hospital)
      expect(assigns(:hospital).class).to eq(Hospital)
      expect(assigns(:patient)).to eq(patient)
      expect(assigns(:patient).class).to eq(Patient)
    end
  end

  #  describe "Put #update" do
  #   it 'should find and update an object' do
  #     sign_in
  #     put :update, hosptial_id: hospital, id: patient, hospital: { name: "HospitalOne", description: "Redlands, CA" }, patient: {first_name: "Belinda", last_name: "Hare", dob: "1988-11-04", description: "fever", gender: "female"}
  #     expect(assigns(:hospital).name).to eq("HospitalOne")
  #     expect(assigns(:hospital).description).to eq("Redlands, CA")
  #     expect(assigns(:patient).first_name).to eq("Belinda")
  #     #need to check and make sure the name/description changed in the expectations
  #   end
  # end

  describe "Delete #destroy" do
    it 'should find an object and delete it' do
      sign_in
      delete :destroy, hospital_id: hospital, id: patient
      expect(Patient.count).to eq(0)
    end
  end
end
