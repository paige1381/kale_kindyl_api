class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
      t.string :title
      t.integer :directions_category_id
      t.string :note
      t.integer :order

      t.timestamps
    end
  end
end
