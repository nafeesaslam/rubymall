class AddQuantityToProduct < ActiveRecord::Migration
  def change
    add_column :products, :quantity, :integer
  end
  
  def self.down
    remove_column :line_items, :quantity
  end
end
