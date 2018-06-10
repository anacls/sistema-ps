class SessionsHospitalController < ApplicationController
  def new
  end
  
  def create
    hospital = Hospital.find_by(email: params[:session][:email].downcase)
    if hospital && hospital.authenticate(params[:session][:senha])
      loghospital_in hospital
      redirect_to hospital
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
  
  def destroy
    loghospital_out
    redirect_to root_url
  end
end
