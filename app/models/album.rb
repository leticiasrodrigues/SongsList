class Album < ApplicationRecord
  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  has_many :songs, dependent: :destroy

  def time_since_was_released
    today = Date.today.year
    today - year
  end
end
