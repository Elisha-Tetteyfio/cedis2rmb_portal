require 'rails_helper'

RSpec.describe "admin_accounts/index", type: :view do
  before(:each) do
    assign(:admin_accounts, [
      AdminAccount.create!(
        user: nil,
        account_type: nil,
        acount_number: "Acount Number",
        account_name: "Account Name"
      ),
      AdminAccount.create!(
        user: nil,
        account_type: nil,
        acount_number: "Acount Number",
        account_name: "Account Name"
      )
    ])
  end

  it "renders a list of admin_accounts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Acount Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Account Name".to_s), count: 2
  end
end
