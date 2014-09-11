
class PatientsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  before_action :find_patient, only: [:show, :edit, :update, :destroy, :examined, :xrayed, :recovery, :discharged]

  def patients_search
    @patients = Patient.where("last_name LIKE ?", "%#{params[:q]}%")
    respond_to do |format|
      format.js
    end
  end

  
  def show
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:id]
    @doctor = @hospital.doctors.new
  end

  def new
    @patient = Patient.new
    @hospital = Hospital.find params[:hospital_id]
  end

  def create_doctor
    @patient = Patient.find params[:id]
    @doctor = @patient.doctors.create doctor_params
    redirect_to hospital_patient_path
  end

  def delete_doctor
    
    @patient = Patient.find params[:id]
    @doctor = Doctor.find params[:doctor_id]
    @doctor.delete
    redirect_to hospital_patient_path
  end


  def create
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.new(patient_params)
    if @patient.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def edit
   @hospital = Hospital.find params[:hospital_id]
  end

  def update
    if @patient.update_attributes patient_params
        redirect_to root_path 
    else 
        render :edit
    end

  end

  def destroy
    @hospital = Hospital.find params[:hospital_id]
    @patient.delete
    redirect_to hospital_path(@hospital)
  end

  def examined
    @hospital = Hospital.find params[:hospital_id]
    @patient.checkup!
    # redirect_to hospital_patient_path(@hospital, @patient)
    respond_to do |format|
      format.js
    end
  end

  def xrayed
    p "*"*100
    @hospital = Hospital.find params[:hospital_id]
    @patient.xray!
    p "*"*100
    # redirect_to hospital_patient_path(@hospital, @patient)
    respond_to do |format|
      format.js
    end
  end

  def recovery
    @hospital = Hospital.find params[:hospital_id]
    @patient.surgery!
 
    respond_to do |format|
      format.js
    end
  end

  def discharged
    @hospital = Hospital.find params[:hospital_id]
    @patient.finance!
    respond_to do |format|
      format.js


    end
  end

  private 
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :dob, :description, :gender)
    end
    def find_patient
      @patient = Patient.find params[:id]
    end

    def doctor_params
    params.require(:doctor).permit(:name)
    end
end





