class CreateIngredientCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_categories do |t|
      t.string :title
      t.integer :recipe_id
      t.string :note

      t.timestamps
    end
  end
end
