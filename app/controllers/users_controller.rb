class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:user])
    if @user.create(:user)
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:user])
  end

  def update
    @user = User.find(params[:user])
    if @user.update_attributes(params[:user])
      redirect_to user_path(@user)
    else
      render 'update'
    end
  end

  def index
    @users = User.all
  end
end
