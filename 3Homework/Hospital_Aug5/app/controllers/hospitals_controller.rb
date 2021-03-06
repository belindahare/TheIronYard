class HospitalsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find params[:id]
    @doctor = @hospital.doctors.new 
  end

  def new
    @hospital = Hospital.new
  end
  def create_doctor
    @hospital = Hospital.find params[:id]
    @hospital.doctors.create doctor_params
    redirect_to @hospital
  end

  def delete_doctor
    @hospital = Hospital.find params[:id]
    @doctor = Doctor.find params[:doctor_id]
    @doctor.delete
    redirect_to @hospital
  end


  def create

    @hospital = Hospital.new hospital_params
    if @hospital.save
    redirect_to root_path
    else 
      render :new  
    end
  end

  def edit
    @hospital = Hospital.find params[:id]
  end

  def update
    @hospital = Hospital.find params[:id]
    @hospital.update_attributes hospital_params
    redirect_to root_path
  end

  def destroy
    @hospital = Hospital.find params[:id]
    @hospital.delete
    redirect_to root_path
  end


  private
  def hospital_params
    params.require(:hospital).permit(:name, :address)
  end

  def doctor_params
    params.require(:doctor).permit(:name)
  end
end
