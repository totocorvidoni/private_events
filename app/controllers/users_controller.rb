class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @upcoming_events = @user.upcoming_events
    @previous_events = @user.previous_events
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
