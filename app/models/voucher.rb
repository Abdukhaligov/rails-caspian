class Voucher < ApplicationRecord
  belongs_to :event
  belongs_to :membership
end
