class EventsUser < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :membership
end
