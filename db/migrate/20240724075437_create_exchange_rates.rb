class CreateExchangeRates < ActiveRecord::Migration[7.0]
  def change
    create_table :exchange_rates do |t|
      t.decimal :value
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
