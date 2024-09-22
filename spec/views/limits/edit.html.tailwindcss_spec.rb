require 'rails_helper'

RSpec.describe "limits/edit", type: :view do
  let(:limit) {
    Limit.create!(
      min_value: "9.99",
      max_value: "9.99"
    )
  }

  before(:each) do
    assign(:limit, limit)
  end

  it "renders the edit limit form" do
    render

    assert_select "form[action=?][method=?]", limit_path(limit), "post" do

      assert_select "input[name=?]", "limit[min_value]"

      assert_select "input[name=?]", "limit[max_value]"
    end
  end
end
