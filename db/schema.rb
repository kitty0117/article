ActiveRecord::Schema.define(version: 20190731054223) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "digest"
    t.string "writer"
    t.datetime "update_date"
    t.integer "view"
    t.string "contents"
    t.text "text"
    t.text "together"
    t.string "recommended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id"], name: "index_articles_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.text "wrapup"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
