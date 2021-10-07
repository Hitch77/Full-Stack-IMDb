class AddGenrestoMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :genre_one, :string
    add_column :movies, :genre_two, :string
  end
end
