class Report < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :event, optional: true
  belongs_to :topic, optional: true
  enum :status => {pending: 0, denied: 1, approved: 2}
end
