class ExchangeRate < ApplicationRecord
  belongs_to :user

  def self.current_rate
    order(created_at: :desc).first
  end
end
