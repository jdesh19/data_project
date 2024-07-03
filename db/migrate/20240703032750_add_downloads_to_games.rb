class AddDownloadsToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :downloads, :integer
  end
end
