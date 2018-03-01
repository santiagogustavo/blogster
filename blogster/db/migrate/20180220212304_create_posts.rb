class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :slug, null: false
      t.string :title
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end
end
