class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :rating
      t.text :comment
      t.integer :state

      t.timestamps
    end
  end
end
