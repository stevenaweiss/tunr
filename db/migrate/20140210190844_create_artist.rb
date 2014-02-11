class CreateArtist < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :name
      t.text :genre
      t.text :photo_url
    end
  end
end
