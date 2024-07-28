require 'rails_helper'

RSpec.describe "limits/new", type: :view do
  before(:each) do
    assign(:limit, Limit.new(
      min_value: "9.99",
      max_value: "9.99"
    ))
  end

  it "renders new limit form" do
    render

    assert_select "form[action=?][method=?]", limits_path, "post" do

      assert_select "input[name=?]", "limit[min_value]"

      assert_select "input[name=?]", "limit[max_value]"
    end
  end
end
