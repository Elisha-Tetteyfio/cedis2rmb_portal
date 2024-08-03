class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.references :user, null: true, foreign_key: true, type: :uuid
      t.decimal :amount
      t.decimal :rate
      t.string :status

      t.timestamps
    end
  end
end
