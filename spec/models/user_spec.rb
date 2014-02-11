require 'spec_helper'

describe User do
  
  it "should validate the presence of username" do
    user = User.new
    user2 = User.new(username: "Joe")
    expect(user).to_not be_valid
    expect(user2).to be_valid
  end
  
end
