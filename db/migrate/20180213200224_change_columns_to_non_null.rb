class ChangeColumnsToNonNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :recipes, :type, false
  end
end
