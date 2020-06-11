class User < ApplicationRecord
  belongs_to :reference, optional: true
  belongs_to :degree, optional: true
  belongs_to :region, optional: true
  has_and_belongs_to_many :events
end
