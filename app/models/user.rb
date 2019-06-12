class User < ApplicationRecord
  has_many :creator_events, foreign_key: 'creator_id', class_name: "Event"
end
