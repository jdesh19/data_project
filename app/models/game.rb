class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :platform
  belongs_to :publisher

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "developer", "genre", "genre_id", "id", "id_value", "image", "platform", "platform_id", "publisher", "publisher_id", "release_date", "title", "updated_at"]
  end

  validates :title, :image, :description, :genre, :platform, :publisher, :release_date, presence: true
end
