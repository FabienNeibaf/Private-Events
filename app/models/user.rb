class User < ApplicationRecord
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event
  has_many :created_events, foreign_key: 'creator_id', class_name: "Event"
  has_many :sent_invitations, foreign_key: 'host_id', class_name: "Invitation"
  has_many :received_invitations, foreign_key: 'guest_id', class_name: "Invitation"

  def upcoming_events
    attended_events.where('event_date > ?', DateTime.now)
  end

  def previous_events
    attended_events.where('event_date <= ?', DateTime.now)
  end
end
