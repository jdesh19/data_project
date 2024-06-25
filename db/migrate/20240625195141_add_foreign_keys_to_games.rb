class AddForeignKeysToGames < ActiveRecord::Migration[7.1]
  def change
    add_reference :games, :genre, null: false, foreign_key: true
    add_reference :games, :platform, null: false, foreign_key: true
    add_reference :games, :publisher, null: false, foreign_key: true
  end
end
