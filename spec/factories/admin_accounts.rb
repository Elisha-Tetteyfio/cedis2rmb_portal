FactoryBot.define do
  factory :admin_account do
    user { nil }
    account_type { nil }
    acount_number { "MyString" }
    account_name { "MyString" }
  end
end
