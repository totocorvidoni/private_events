class User < ApplicationRecord
  has_many :attendances
  has_many :attended_events, :through     => :attendances, :source     => :event
  has_many :created_events,  :foreign_key => :creator_id,  :class_name => "Event"
  has_many :invitations
  has_many :events_invited, :through => :invitations, :source => :event

  def self.sign_in(user_id)
    session[:user_id] = user_id
  end

  def upcoming_events
    attended_events.select { |event| Time.now < event.date }
  end

  def previous_events
    attended_events.select { |event| Time.now > event.date }
  end
end
