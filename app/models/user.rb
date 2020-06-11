class User < ApplicationRecord
  belongs_to :reference, optional: true
  belongs_to :degree, optional: true
  belongs_to :region, optional: true
  has_many :events_users
  has_many :events, through: :events_users
  has_many :memberships, through: :events_users
end
