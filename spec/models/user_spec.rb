require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with all attributes" do
    user = build(:user)
    expect(user).to be_valid
  end

  # it "is not valid without email" do
  #   user = build(:user, :no_email)
  #   expect(user).to_not be_valid
  # end

  it "is not valid without a role assigned" do
    user = build(:user, :no_role)
    expect(user).to_not be_valid
  end

  # it "is not valid without a password" do
  #   user = build(:user, :no_password)
  #   expect(user).to_not be_valid
  # end

  it "is valid even without a username" do
    user = build(:user, :no_username)
    expect(user).to be_valid
  end
end
