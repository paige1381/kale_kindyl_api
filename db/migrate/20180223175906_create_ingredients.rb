class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :title
      t.integer :ingredient_category_id
      t.string :note

      t.timestamps
    end
  end
end
