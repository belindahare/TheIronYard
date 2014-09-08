require 'rails_helper'

describe HospitalsController do

  let(:hospital) {Hospital.create(name: "TestHospital", description: "Charleston, SC")}


  it "GET #new" do 
    sign_in
    get :new
    expect(assigns(:hospital).class).to eq(Hospital)
    expect(assigns(:hospital).new_record?).to eq(true)
  end

  describe "POST #create" do
    it 'successful creation' do
      sign_in
      expect {
        post :create, hospital: { name: "HospitalOne", description: "Redlands, CA" }
      }.to change(Hospital, :count).by(1)
    end
  end

  describe "GET #edit" do
    #this needs the let block of code so the test can create a test hospital and try to edit it
    it 'should find an object' do
      sign_in
      get :edit, id: hospital
      expect(assigns(:hospital)).to eq(hospital)
      expect(assigns(:hospital).class).to eq(Hospital)
    end
  end

  describe "GET #show" do
    it 'should find an object and display it' do
      sign_in
      get :show, id: hospital
      expect(assigns(:hospital)).to eq(hospital)
      expect(assigns(:hospital).class).to eq(Hospital)

      expect(assigns(:doctor).doctorable).to eq(hospital)
      expect(assigns(:doctor).class).to eq(Doctor)
    end
  end

  describe "Put #update" do
    it 'should find and update an object' do
      sign_in
      put :update, id: hospital, hospital: { name: "HospitalOne", description: "Redlands, CA" }
      expect(assigns(:hospital).name).to eq("HospitalOne")
      expect(assigns(:hospital).description).to eq("Redlands, CA")
      #need to check and make sure the name/description changed in the expectations
    end
  end
  describe "Delete #destroy" do
    it 'should find an object and delete it' do
      sign_in
      delete :destroy, id: hospital
      expect(Hospital.count).to eq(0)
    end
  end
end