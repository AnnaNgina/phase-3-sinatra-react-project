class CreateReview < ActiveRecord::Migration[6.1]
  def change
    create_table :review do |t|
      t.string :name
      t.string :comment
      t.integer :recipe_id
      t.timestamps
    end
  end
end
