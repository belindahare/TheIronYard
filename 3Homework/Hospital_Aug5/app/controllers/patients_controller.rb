class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy, :examined, :xrayed, :recovery, :discharged]
  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new patient_params
    if @patient.save
    redirect_to root_path
    else 
      render :new
    end
  end

  def edit
   
  end

  def update
    if @patient.update_attributes patient_params
        redirect_to root_path 
    else 
        render :edit
    end

  end

  def destroy
    @patient.delete
    redirect_to root_path
  end

  def examined
    @patient.checkup!
    redirect_to patient_url
  end

  def xrayed
    @patient.xray!
    redirect_to patient_url
  end

  def recovery
    @patient.surgery!
    redirect_to patient_url
  end

  def discharged
    @patient.finance!
    redirect_to patient_url
  end

  private 
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :dob, :description, :gender)
    end
    def find_patient
      @patient = Patient.find params[:id]
    end
end


#from show page
#<%= link_to "Edit", edit_patient_path(patient) %> | 
#<%= link_to "Delete", patient_path(patient), method: :delete %>
#<%= link_to "Back", root_path %>


