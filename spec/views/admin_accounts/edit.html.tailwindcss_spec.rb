require 'rails_helper'

RSpec.describe "admin_accounts/edit", type: :view do
  let(:admin_account) {
    AdminAccount.create!(
      user: nil,
      account_type: nil,
      acount_number: "MyString",
      account_name: "MyString"
    )
  }

  before(:each) do
    assign(:admin_account, admin_account)
  end

  it "renders the edit admin_account form" do
    render

    assert_select "form[action=?][method=?]", admin_account_path(admin_account), "post" do

      assert_select "input[name=?]", "admin_account[user_id]"

      assert_select "input[name=?]", "admin_account[account_type_id]"

      assert_select "input[name=?]", "admin_account[acount_number]"

      assert_select "input[name=?]", "admin_account[account_name]"
    end
  end
end
