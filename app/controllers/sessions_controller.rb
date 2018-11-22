class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    unless user.nil?
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    end
  end
end
