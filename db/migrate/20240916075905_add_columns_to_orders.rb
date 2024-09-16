class AddColumnsToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :reference, :text
    add_column :orders, :order_code, :string
  end
end
