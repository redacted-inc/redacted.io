class UsersController < ApplicationController
  def new
    logout_if_possible
    @title = "register"
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
   
    @title = "#{@user.first_name.capitalize}'s Dashboard"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the party!"
      redirect_to @user
    else
      @title = "register"
      render "new"
    end
  end
end
