require 'spec_helper'

describe User do
  it{ should have_valid(:username).when("Aphive", "JohnnyAppleSeed")}
  it{ should_not have_valid(:username).when(nil, "")}

  it{ should have_valid(:email).when("Alexpzw@hotmail.com", "user@example.com")}
  it{ should_not have_valid(:email).when("", nil, "a.com", "user@come")}

  it"has a matching password confirmation for the password" do
    user= User.new
    user.password ='password'
    user.password_confirmation ='anotherpassword'

    expect(user).to_not be_valid
  end
end
