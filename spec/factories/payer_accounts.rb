FactoryBot.define do
  factory :payer_account do
    account_type { nil }
    user { nil }
    account_name { "MyString" }
    account_number { "MyString" }
  end
end
