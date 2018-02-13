class ChangeImage1ToNonNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :recipes, :image1, false
  end
end
