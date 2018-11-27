class Event < ApplicationRecord
  has_many :attendances
  has_many :attendees, :through => :attendances, :source => :user
  belongs_to :creator, :class_name => "User"

  scope :upcoming, -> { where('date > ?', Time.now) }
  scope :past,     -> { where('date < ?', Time.now) }

  # def self.upcoming
  #   select { |event| Time.now < event.date }
  # end

  # def self.past
  #   select { |event| Time.now > event.date }
  # end
end
