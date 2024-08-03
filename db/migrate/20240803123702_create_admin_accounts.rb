class CreateAdminAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_accounts, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :account_type, null: false, foreign_key: true
      t.string :account_number
      t.string :account_name

      t.timestamps
    end
  end
end
