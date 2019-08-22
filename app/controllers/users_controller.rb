class UsersController < ApplicationController
    def new
      @user = User.new
    end

    def create
      @user = User.new

      @user.password = params[:user][:password]
      @user.password_confirmation = params[:user][:first_name]
      @user.first_name = params[:user][:first_name]
      @user.last_name = params[:user][:last_name]
      @user.email = params[:user][:email]
      @user.bio = params[:user][:bio]

      if @user.save
        flash.now[:notice] = "New account made!"
        session[:user_id] = @user.id

      else
        flash.now[:alert] = "Failed to create your new account."
        render :new
      end
    end

    def show
      @user = User.find(params[:id])
    end

    def update

    end

    def delete

    end
end
