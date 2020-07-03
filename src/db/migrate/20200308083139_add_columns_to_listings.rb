class AddColumnsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :from, :date
    add_column :listings, :to, :date
  end
end
