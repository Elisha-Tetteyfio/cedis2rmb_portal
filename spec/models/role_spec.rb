require 'rails_helper'

RSpec.describe Role, type: :model do
  it "is valid " do
    role = build(:role)
    expect(role).to be_valid
  end
end
