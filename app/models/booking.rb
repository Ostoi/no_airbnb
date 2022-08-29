class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spaceflight
end
