class PayerAccount < ApplicationRecord
  belongs_to :account_type
  belongs_to :user
end
