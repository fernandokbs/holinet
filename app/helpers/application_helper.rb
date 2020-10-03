module ApplicationHelper
    def custom_signed_in?
        if !current_user.nil?
            user = current_user
        elsif !current_student.nil?
            user = current_student
        elsif !current_teacher.nil?
            user = current_teacher
        elsif !current_school.nil?
            user = current_school
        end

        user
    end

    def user_path
        user = custom_signed_in?
        path = root_path

        if !user.nil?
            if user.student?
                path = home_students_url
            elsif user.teacher?
                path = home_teachers_url
            elsif user.admin?
                path = home_url
            elsif user.school?
                path = home_schools_url
            end
        end

        path
    end

    def custom_current_user
        custom_signed_in?
    end
end
