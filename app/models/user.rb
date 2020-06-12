class User < ApplicationRecord
  has_secure_password
  belongs_to :reference, optional: true
  belongs_to :degree, optional: true
  belongs_to :region, optional: true
  has_many :user_memberships
  accepts_nested_attributes_for :user_memberships, allow_destroy: true
  has_many :reports
  accepts_nested_attributes_for :reports, allow_destroy: true
  has_many :documents
  accepts_nested_attributes_for :documents, allow_destroy: true
  has_many :events, through: :user_memberships
  has_many :memberships, through: :user_memberships
  enum :rank => {"Not in committee": 0, "First": 1, "Second": 2, "Other": 3}

end
