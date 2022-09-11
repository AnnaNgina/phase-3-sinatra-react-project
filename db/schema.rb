

ActiveRecord::Schema.define(version: 2022_09_11_183029) do

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "ingredients"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.string "comment"
    t.integer "recipe_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
