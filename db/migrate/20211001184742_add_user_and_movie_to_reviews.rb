class AddUserAndMovieToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :user_id, :integer, null: false
    add_column :reviews, :movie_id, :integer, null: false
  end
end
