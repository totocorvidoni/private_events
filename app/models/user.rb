class User < ApplicationRecord
  has_many :attendances
  has_many :attended_events, :through     => :attendances, :source     => :event
  has_many :created_events,  :foreign_key => :creator_id,  :class_name => "Event"

  def self.sign_in(user_id)
    session[:user_id] = user_id
  end
end
