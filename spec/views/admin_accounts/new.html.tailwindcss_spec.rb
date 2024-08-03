require 'rails_helper'

RSpec.describe "admin_accounts/new", type: :view do
  before(:each) do
    assign(:admin_account, AdminAccount.new(
      user: nil,
      account_type: nil,
      acount_number: "MyString",
      account_name: "MyString"
    ))
  end

  it "renders new admin_account form" do
    render

    assert_select "form[action=?][method=?]", admin_accounts_path, "post" do

      assert_select "input[name=?]", "admin_account[user_id]"

      assert_select "input[name=?]", "admin_account[account_type_id]"

      assert_select "input[name=?]", "admin_account[acount_number]"

      assert_select "input[name=?]", "admin_account[account_name]"
    end
  end
end
