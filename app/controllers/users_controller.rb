class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash.now[:notice] = "User deleted"
      redirect_to users_path
    else
      flash.now[:error] = "Issue deleting user"
      render 'index'
    end
  end
end
