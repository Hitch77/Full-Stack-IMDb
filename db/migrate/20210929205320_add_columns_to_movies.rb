class AddColumnsToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :year, :integer, null: false
    add_column :movies, :film_rating, :string
    add_column :movies, :description, :text, null: false
    add_column :movies, :duration, :string
    add_column :movies, :writer_id, :integer
    add_column :movies, :director_id, :integer
    add_column :movies, :actor_id, :integer
    add_index :movies, :title
  end
end
