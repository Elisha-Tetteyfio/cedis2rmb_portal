class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :payer_account
  belongs_to :recipient_account

  STATUS = [['Pending', 'Pending'], ['Completed', 'Completed'], ['Cancelled', 'Cancelled']]

  def self.status_options
    STATUS
  end
end
