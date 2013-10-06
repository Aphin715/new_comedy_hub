require 'spec_helper'

describe Show do
  it {should belong_to(:comedy_club)}
  it {should have_many(:acts)}
  it {should validate_presence_of(:comedy_club)}
end
