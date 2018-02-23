class CreateDirectionsCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :directions_categories do |t|
      t.string :title
      t.integer :recipe_id
      t.string :note

      t.timestamps
    end
  end
end
