class Sponsor < ApplicationRecord
  belongs_to :degree, optional: true
end
