class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :digest
      t.string :writer
      t.datetime :update_date
      t.integer :view
      t.string :contents
      t.text :text
      t.text :together
      t.string :recommended

      t.timestamps
    end
  end
end
