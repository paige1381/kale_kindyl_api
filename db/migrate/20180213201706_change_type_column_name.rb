class ChangeTypeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :recipes, :type, :recipeType
  end
end
