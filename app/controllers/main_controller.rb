class MainController < ApplicationController
    include ApplicationHelper

    before_action :require_login, only: [:main]

    def main

    end

    def home
    end

    private

    def auth
        (!current_user.nil? or !current_student.nil? or !current_school.nil? or !current_teacher.nil?)
    end

    def require_login
        if auth
            redirect_to user_path
        end
    end
end
