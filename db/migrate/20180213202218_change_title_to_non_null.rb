class ChangeTitleToNonNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :recipes, :title, false
  end
end
