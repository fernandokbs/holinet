module ApplicationHelper
    def custom_signed_in?
        user = if current_user then current_user else  nil end 
        user = if current_student then current_student else  nil  end
        user = if current_teacher then current_teacher else  nil  end
        user
    end
end
