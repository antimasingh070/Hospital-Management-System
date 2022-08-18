class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # helper_method :current_user, :logged_in?

  #these are the helper method that is (mostly) used in your Rails views to share reusable code.
  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  def logged_in?
    !!current_user
  end
  # def doctor?
  #   current_user.role == "Doctor"
  def set_doctor
    @current_user = User.all.where(role: "Doctor")
  end
  def set_patient
    @current_user = User.all.where(role: "Patient")
  end
  def set_administrator
    @current_user = User.all.where(role: "Administrator")
  end
  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :gender, :designation, :age, :role, :hospital_id, :department_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :gender, :designation, :age, :role, :hospital_id, :department_id])
  end  
end
