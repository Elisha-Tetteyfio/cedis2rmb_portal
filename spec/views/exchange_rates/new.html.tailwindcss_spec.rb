require 'rails_helper'

RSpec.describe "exchange_rates/new", type: :view do
  before(:each) do
    assign(:exchange_rate, ExchangeRate.new(
      value: "9.99",
      user: nil
    ))
  end

  it "renders new exchange_rate form" do
    render

    assert_select "form[action=?][method=?]", exchange_rates_path, "post" do

      assert_select "input[name=?]", "exchange_rate[value]"

      assert_select "input[name=?]", "exchange_rate[user_id]"
    end
  end
end
