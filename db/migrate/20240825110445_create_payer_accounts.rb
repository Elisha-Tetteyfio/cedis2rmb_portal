class CreatePayerAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :payer_accounts, id: :uuid do |t|
      t.references :account_type, null: false, foreign_key: true
      t.references :user, null: true, foreign_key: true, type: :uuid
      t.string :account_name
      t.string :account_number

      t.timestamps
    end
  end
end
