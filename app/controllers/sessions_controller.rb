class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user = User.find_by(user_params[:email])

        if user.authenticate(user_params[:password])
            session[:user_id] = user.id
        else
            retirect_to login_path
        end

    end

    private

    def user_params
        params.require(:user).permit(:email, :password)
    end
end
