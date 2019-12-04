class Carriage < ApplicationRecord
  validates :number, presence: true
  belongs_to :train
  scope :coupe,   -> { where(type: 'CoupeCarriage') }
  scope :economy, -> { where(type: 'EconomyCarriage') }
  scope :sv,      -> { where(type: 'SvCarriage') }
  scope :seated,  -> { where(type: 'SeatedCarriage') }
end
