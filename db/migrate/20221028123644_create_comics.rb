class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.integer :user_id
      t.text :image_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
