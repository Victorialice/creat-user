class UsersController < ApplicationController

  def index
    @users=UserInformation.all
  end

  def new
  end

  def show
    @user=UserInformation.find(params[:id])
  end

  def create
    @user= UserInformation.new(user_params)
    @user.save
    redirect_to "/users/#{@user.id}"
    #redirect_to (:action => 'show') 
  end

  private
  def user_params
    params.require(:user).permit(:name, :password)
  end
end

