class EmployeesController < ApplicationController
    before_action :authenticate_user!
    
    def show
        if current_user
            @user = current_user.username
        else
            redirect_to new_user_session_path, notice: 'You are not logged in.'
        end
    end
end