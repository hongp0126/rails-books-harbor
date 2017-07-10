class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :category
      t.integer :price
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end