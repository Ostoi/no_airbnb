class Spaceflight < ApplicationRecord

  belongs_to :user
  has_one_attached :ship_image
end
