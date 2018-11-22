module ApplicationHelper
  def show_user
    User.find(session[:user_id]).name unless session[:user_id].nil?
  end
end
