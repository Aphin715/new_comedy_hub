require 'spec_helper'

describe ComedyClub do
  it {should have_many(:shows)}

  it do
    should have_valid(:description)
      .when("This comedy club was built in 1912", "", nil)
  end
end
