class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.references :category, foreign_key: true
      t.string :suburb
      t.string :city
      t.float :price
      t.float :deposit
      t.boolean :availability

      t.timestamps
    end
  end
end
