class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create patient_params
    redirect_to root_path
  end

  def edit
   
  end

  def update
    @patient.update_attributes patient_params
    redirect_to root_path 
  end

  def destroy
    redirect_to root_path
  end

  private 
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :dob, :description, :gender)
    end
    def find_patient
      @patient = Patient.find params[:id]
    end
end


