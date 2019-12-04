class Carriage < ApplicationRecord
  validates :number, presence: true
  belongs_to :train
  scope :coupe, ->   { where(type: 'CoupeCarriage') }
  scope :economy, -> { where(type: 'EconomyCarriage') }
end
