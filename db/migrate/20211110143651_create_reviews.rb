class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :ration
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
