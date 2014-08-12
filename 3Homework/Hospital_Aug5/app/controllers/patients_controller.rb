class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy, :examined, :xrayed, :recovery, :discharged]
  def show
    @hospital = Hospital.find params[:hospital_id]

  end

  def new
    @patient = Patient.new
    @hospital = Hospital.find params[:hospital_id]
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
    redirect_to root_path
  end

  def examined
    @hospital = Hospital.find params[:hospital_id]
    @patient.checkup!
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def xrayed
    @hospital = Hospital.find params[:hospital_id]
    @patient.xray!
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def recovery
    @patient.surgery!
    redirect_to hospital_patient_path
  end

  def discharged
    @patient.finance!
    redirect_to hospital_patient_path
  end

  private 
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :dob, :description, :gender)
    end
    def find_patient
      @patient = Patient.find params[:id]
    end
end





