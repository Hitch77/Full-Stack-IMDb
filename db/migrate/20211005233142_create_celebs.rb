class CreateCelebs < ActiveRecord::Migration[5.2]
  def change
    create_table :celebs do |t|
      t.string :name, null: false
      t.string :bio, null: false
      t.string :birthdate, null: false
      t.string :birthplace, null: false
    end
  end
end
