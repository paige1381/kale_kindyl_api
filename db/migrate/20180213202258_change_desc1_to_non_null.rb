class ChangeDesc1ToNonNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :recipes, :desc1, false
  end
end
