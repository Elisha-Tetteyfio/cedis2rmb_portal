require 'rails_helper'

RSpec.describe "exchange_rates/show", type: :view do
  before(:each) do
    assign(:exchange_rate, ExchangeRate.create!(
      value: "9.99",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
