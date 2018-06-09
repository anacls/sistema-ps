module SessionsHospitalHelper
  def loghospital_in(hospital)
    session[:hospital_id] = hospital.id
  end
  
  def current_hospital
    @current_hospital ||= Hospital.find_by(id: session[:hospital_id])
  end
  
  def loggedhospital_in?
    !current_hospital.nil?
  end
  
  def loghospital_out
    session.delete(:hospital_id)
    @current_hospital = nil
  end
end
