class Carriage < ApplicationRecord
  validates :number, presence: true
  validates :number, uniqueness: { scope: :train_id }
  belongs_to :train

  scope :order_up, -> { order(:number) }
  scope :order_down, -> { order(number: :desc) }

  before_validation :set_number, if: :train_id_changed?

  scope :coupe,   -> { where(type: "CoupeCarriage") }
  scope :economy, -> { where(type: "EconomyCarriage") }
  scope :sv,      -> { where(type: "SvCarriage") }
  scope :seated,  -> { where(type: "SeatedCarriage") }

  private

  def set_number
    if train.carriages.empty?
      self.number = 1
    else
      self.number = train.carriages.maximum(:number) + 1
    end
  end

end
