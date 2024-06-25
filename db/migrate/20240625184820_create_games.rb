class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :image
      t.text :description
      t.string :genre
      t.string :platform
      t.string :publisher
      t.string :developer
      t.string :release_date

      t.timestamps
    end
  end
end
