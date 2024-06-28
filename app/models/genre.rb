class Genre < ApplicationRecord
  has_many :games
  validates :name, presence: true, length: { maximum: 30 }
end
