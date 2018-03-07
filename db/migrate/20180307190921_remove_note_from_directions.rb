class RemoveNoteFromDirections < ActiveRecord::Migration[5.2]
  def change
    remove_column :directions, :note, :string
  end
end
