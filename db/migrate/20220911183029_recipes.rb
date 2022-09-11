class Recipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string(:name)
      t.string(:author)
      t.string(:ingredients)
    end
  end
end
