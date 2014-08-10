class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find params[:id]
  end

  def new
    @hospital = Hospital.new
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
  end


  private
  def hospital_params
    params.require(:hospital).permit(:name, :description)
  end
end
