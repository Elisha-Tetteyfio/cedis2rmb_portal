FactoryBot.define do
  factory :user do
    username { "Test" }
    # email {"test@com"}
    # password {"123456"}
    role

    # trait :no_email do
    #   email {nil}
    # end

    trait :no_role do
      role {nil}
    end

    # trait :no_password do
    #   password {nil}
    # end

    trait :no_username do
      username {nil}
    end
  end
end
