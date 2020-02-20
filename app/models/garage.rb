class Garage < ApplicationRecord
  # model association
  has_many :cars, dependent: :destroy

  # validations
  validates_presence_of :title, :created_by
end
