require 'rails_helper'

RSpec.describe "admin_accounts/show", type: :view do
  before(:each) do
    assign(:admin_account, AdminAccount.create!(
      user: nil,
      account_type: nil,
      acount_number: "Acount Number",
      account_name: "Account Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Acount Number/)
    expect(rendered).to match(/Account Name/)
  end
end
