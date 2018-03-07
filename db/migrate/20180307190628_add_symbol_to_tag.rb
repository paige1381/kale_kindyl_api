class AddSymbolToTag < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :symbol, :string
  end
end
