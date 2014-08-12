class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    #@doctor = Doctor.find params[:doctor_id]
    @doctor = @hospital.doctors.new 
    @hospital = Hospital.find params[:id]
  end

  def new
    @hospital = Hospital.new
  end
  def create_doctor
    @hospital = Hospital.find params[:id]
    @hospitals.doctors.create doctor_params
    redirect_to @hospital
  end

  def delete_doctor
    @hospital = Hospital.find params[:id]
    @doctor = Doctor.find params[:doctor_id]
    @hospitals.delete
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
    params.require(:hospital).permit(:name, :description)
  end

  def doctor_params
    params.require(:doctor).permit(:name)
  end
end
