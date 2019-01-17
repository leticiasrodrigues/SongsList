class Album < ApplicationRecord
  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  has_many :songs, dependent: :destroy

end