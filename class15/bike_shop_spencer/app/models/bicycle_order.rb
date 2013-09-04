class BicycleOrder < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :wheel_set
end