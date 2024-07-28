require 'rails_helper'

RSpec.describe "limits/index", type: :view do
  before(:each) do
    assign(:limits, [
      Limit.create!(
        min_value: "9.99",
        max_value: "9.99"
      ),
      Limit.create!(
        min_value: "9.99",
        max_value: "9.99"
      )
    ])
  end

  it "renders a list of limits" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
