class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create 
       @user = User.new(permitted_params)
       if @user.save
           redirect_to root_url, notice: "Thanks for signing up!"
       else
           render :new
       end
    end
    
    private
    
    def permitted_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
