class AttendancesController < ApplicationController
  def create
    user = User.find(params[:user_id])
    event = Event.find(params[:event_id])
    if user.events_invited.include?(event)
      Attendance.create(user_id: params[:user_id], event_id: params[:event_id])
    end
    redirect_to event_path(params[:event_id])
  end

  private

  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end
