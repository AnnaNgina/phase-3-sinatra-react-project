class Reviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :comment
      t.integer :recipe_id
      t.timestamps
    end
  end
end
