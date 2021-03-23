class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date :execercisedate, null: false
      t.text :post
      t.integer :execercise1, null: false
      t.integer :execercise2
      t.integer :execercise3
      t.integer :execercise4
      t.integer :execercise5
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
