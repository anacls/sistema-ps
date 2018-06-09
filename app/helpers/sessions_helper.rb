module SessionsHelper
  # Logs in the given user.
  def log_in(paciente)
    session[:paciente_id] = paciente.id
  end
  
  def current_paciente?(paciente)
    paciente == current_paciente
  end
  
  def current_paciente
    @current_paciente ||= Paciente.find_by(id: session[:paciente_id])
  end
  
  def logged_in?
    !current_paciente.nil?
  end
  
  def log_out
    session.delete(:paciente_id)
    @current_paciente = nil
  end
  
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end
  
  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
  
end
