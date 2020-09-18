class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        user = current_user

        if user.admin?
            admin_home_index_path
        elsif user.student?
            student_home_index_path
        else
            teacher_home_index_path
        end
    end
end
