class Car < ApplicationRecord
  # model association
  belongs_to :garage

  # validation
  validates_presence_of :name
  validates_presence_of :battery
  validates_presence_of :color
  validates_presence_of :interior
  validates_presence_of :wheel
  validates_presence_of :autopilot
  validates_presence_of :price
  validates_presence_of :image
  # validates :model, presence: true
end
