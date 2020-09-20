module ApplicationHelper
    def my_home
        if current_user.admin?
            admin_home_index_path
        elsif current_user.student?
            student_home_index_path
        else
            teacher_home_index_path
        end
    end
end
