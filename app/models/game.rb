class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :platform
  belongs_to :publisher

  validates :title, :image, :description, :genre, :platform, :publisher, :release_date, presence: true
end
