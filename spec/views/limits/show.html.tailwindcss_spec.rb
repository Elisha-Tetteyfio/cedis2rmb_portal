require 'rails_helper'

RSpec.describe "limits/show", type: :view do
  before(:each) do
    assign(:limit, Limit.create!(
      min_value: "9.99",
      max_value: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
