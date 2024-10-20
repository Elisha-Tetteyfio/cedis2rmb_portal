class AddQrCodeUrlToRecipientAccount < ActiveRecord::Migration[7.0]
  def change
    add_column :recipient_accounts, :qr_code_url, :string
  end
end
