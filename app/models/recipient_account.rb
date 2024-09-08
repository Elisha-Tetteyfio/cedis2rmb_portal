class RecipientAccount < ApplicationRecord
  belongs_to :account_type
  belongs_to :user
  has_one_attached :qr_code
end
