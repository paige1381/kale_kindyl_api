class RemoveRecipeIdFromTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :tags, :recipe_id, :integer
  end
end
