class Membership < ApplicationRecord
  has_many :events_users
  accepts_nested_attributes_for :events_users, :allow_destroy => true
end
