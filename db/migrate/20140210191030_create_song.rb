class CreateSong < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title
      t.integer :year
      t.references :artist
    end
  end
end
