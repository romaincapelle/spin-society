class Competition < ApplicationRecord
  belongs_to :club

  validates :start_date, presence: true
  validates :length_in_days, presence: true
  validates :winner, presence: true
end
