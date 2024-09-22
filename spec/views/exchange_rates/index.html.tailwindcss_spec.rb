require 'rails_helper'

RSpec.describe "exchange_rates/index", type: :view do
  before(:each) do
    assign(:exchange_rates, [
      ExchangeRate.create!(
        value: "9.99",
        user: nil
      ),
      ExchangeRate.create!(
        value: "9.99",
        user: nil
      )
    ])
  end

  it "renders a list of exchange_rates" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
