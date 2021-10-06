class RemoveNullValuesfromReviews < ActiveRecord::Migration[5.2]
  def change
    change_column_null :reviews, :movie_id, true
    change_column_null :reviews, :user_id, true
    change_column_null :reviews, :rating, true
  end
end
