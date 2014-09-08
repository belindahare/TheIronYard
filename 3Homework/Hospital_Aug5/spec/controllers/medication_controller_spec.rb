require 'rails_helper'

describe MedicationsController do
  let(:hospital) {Hospital.create(name: "TestHospital", description: "Charleston, SC")}
  let(:patient) {Patient.create(first_name: "Belinda", last_name: "Hare", dob: "1988-11-04", description: "fever", gender: "female")}
  let(:medication) {Medication.create(name: "Asprin", description: "25 mg")}


    it "should add a new patient to the database" do
      sign_in
      get :new, hospital_id: hospital, patient_id: patient, id: medication
    # expect(assigns(:patient).class).to eq(Patient)
      expect(assigns(:medication).new_record?).to eq(true)
    end


  describe "GET #show" do
    it "should show a patient page" do
      sign_in
      get :show, hospital_id: hospital, patient_id: patient, id: medication
      expect(assigns(:medication).class).to eq(Medication)
      expect(assigns(:medication)).to eq(medication)
    end
  end

  describe "POST #create" do
    it 'successful creation' do
      sign_in
      expect {
        post :create, hospital_id: hospital, patient_id: patient, id: medication, hospital: {name: "TestHospital", description: "Charleston, SC"}, patient: {first_name: "Belinda", last_name: "Hare", dob: "1988-11-04", description: "fever", gender: "female"}, medication: {name: "Asprin", description: "25 mg"}}.to change(Medication, :count).by(2)
    end
  end

  describe "GET #edit" do
    #this needs the let block of code so the test can create a test hospital and try to edit it
    it 'should find an object' do
      sign_in
      get :edit, hospital_id: hospital, patient_id: patient, id: medication
      expect(assigns(:hospital)).to eq(hospital)
      expect(assigns(:hospital).class).to eq(Hospital)
      expect(assigns(:patient)).to eq(patient)
      expect(assigns(:patient).class).to eq(Patient)
      expect(assigns(:medication).class).to eq(Medication)
      expect(assigns(:medication)).to eq(medication)
    end
  end


  describe "Delete #destroy" do
    it 'should find an object and delete it' do
      sign_in
      delete :destroy, hospital_id: hospital, patient_id: patient, id: medication
      expect(Medication.count).to eq(0)
    end
  end
end