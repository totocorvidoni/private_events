class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    user_id = User.find_by(name: invitation_params[:user]).id
    event_id = Event.find_by(description: invitation_params[:event]).id
    @invitation = Invitation.new(user_id: user_id, event_id: event_id)
    @invitation.save
  end

  private

  def invitation_params
    params.require(:invitation).permit(:user, :event)
  end
end
