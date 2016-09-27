class CreateOrderproducts < ActiveRecord::Migration
  def change
    create_table :orderproducts do |t|
      t.references :order, index: true
      t.references :product, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end