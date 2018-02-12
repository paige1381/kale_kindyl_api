class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :desc1
      t.string :desc2
      t.string :desc3
      t.string :prep
      t.string :cook
      t.integer :serves

      t.timestamps
    end
  end
end
