class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :heading, null: false
      t.text :review, null: false
      t.boolean :spoilers, null: false
      t.timestamps
    end
  end
end
