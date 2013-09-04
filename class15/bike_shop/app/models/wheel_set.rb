class WheelSet < ActiveRecord::Base
  validates :name, presence: true

  has_many :bicycle_orders
end