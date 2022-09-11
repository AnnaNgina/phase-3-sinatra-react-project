class CreateRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe do |t|
      # t.string is a method that takes a symbol as an argument and creates a column
      t.string(:name)
      t.string(:author)
      t.string(:ingredients)
    end
  end
end
