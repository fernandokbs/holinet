class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :matricula, :email, :password)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :matricula, :email, :password, :current_password)}
    end


    def after_sign_in_path_for(resource)
        user = custom_signed_in?
        path = root_path

        if user.student?
            path = home_students_url
        elsif user.teacher?
            path = home_teachers_url
        elsif user.admin?
            path = home_url
        end
        path
    end

    private

    def custom_signed_in?
        if !current_user.nil?
            user = current_user
        elsif !current_student.nil?
            user = current_student
        else
            user = current_teacher
        end
        user
    end
end
