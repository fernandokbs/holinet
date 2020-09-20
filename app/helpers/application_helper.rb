module ApplicationHelper
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

    def custom_current_user
        custom_signed_in?
    end

    def custom_logout
        logout =  nil

        user = custom_signed_in?

        if user.admin?
            destroy_user_session_path
        elsif user.student?
            destroy_student_session_path
        else
            destroy_teacher_session_path
        end
    end
end
