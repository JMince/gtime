require 'rails_helper'

describe User do

  @user = User.create(first_name: 'Bobby', last_name: 'Wilson', email_address: 'bobby@gschool.it')

  it "requires a first name" do
    expect(@user).to be_valid
  end

  it "outputs full name as last name, first name" do
    expect(@user.full_name).to eq("Wilson, Bobby")
  end

  it "requires a unique email address" do
    expect(@user).to be_valid
  end
end
