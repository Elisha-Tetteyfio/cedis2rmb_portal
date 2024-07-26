require 'rails_helper'

RSpec.describe "exchange_rates/edit", type: :view do
  let(:exchange_rate) {
    ExchangeRate.create!(
      value: "9.99",
      user: nil
    )
  }

  before(:each) do
    assign(:exchange_rate, exchange_rate)
  end

  it "renders the edit exchange_rate form" do
    render

    assert_select "form[action=?][method=?]", exchange_rate_path(exchange_rate), "post" do

      assert_select "input[name=?]", "exchange_rate[value]"

      assert_select "input[name=?]", "exchange_rate[user_id]"
    end
  end
end
