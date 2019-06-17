class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  scope :past, -> { where('event_date <= ?', DateTime.now) }
  scope :upcoming, -> { where('event_date > ?', DateTime.now) }
end
