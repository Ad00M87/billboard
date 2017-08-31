class AddFromAndMusicGenreAndAgeToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :from, :string
    add_column :artists, :music_genre, :string
    add_column :artists, :age, :integer
  end
end
