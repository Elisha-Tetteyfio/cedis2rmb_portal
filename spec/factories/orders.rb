FactoryBot.define do
  factory :order do
    user { nil }
    amount { "9.99" }
    rate { "9.99" }
    status { "MyString" }
  end
end
