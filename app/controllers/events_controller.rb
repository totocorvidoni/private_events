class EventsController < ApplicationController
  def index
    @upcoming_events = Event.upcoming
    @past_events     = Event.past
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @user = User.find(session[:user_id])
    event = @user.created_events.build(event_params)
    event.save
    redirect_to event_path(event[:id])
  end

  private

  def event_params
    params.require(:event).permit(:description)
  end
end
