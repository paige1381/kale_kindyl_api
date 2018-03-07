class RemoveNoteFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :note, :string
  end
end
