FactoryBot.define do
  factory :recipient_account do
    account_type { nil }
    user { nil }
    account_name { "MyString" }
    account_number { "MyString" }
  end
end
