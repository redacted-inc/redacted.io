class UsersController < ApplicationController
  def new
    @title = "register"
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @title = "#{@user.first_name}'s dashboard"
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
