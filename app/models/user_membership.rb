class UserMembership < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :membership
  enum status: {pending: 0, denied: 1, approved: 2}
end
