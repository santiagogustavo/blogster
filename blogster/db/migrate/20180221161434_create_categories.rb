class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :slug, null: false
      t.string :name

      t.timestamps
    end
  end
end
