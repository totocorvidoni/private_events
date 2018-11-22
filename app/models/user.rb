class User < ApplicationRecord
  has_many :event_atendees, :foreign_key => :atendee_id
  has_many :atended_events, :through => :event_atendees
  has_many :created_events, :foreign_key => :creator_id, :class_name => "Event"

  def self.sign_in(user_id)
    session[:user_id] = user_id
  end
end
