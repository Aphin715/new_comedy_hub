require 'spec_helper'

describe Act do
  it {should belong_to(:comedian)}
  it {should belong_to(:show)}
  it {should validate_presence_of(:comedian)}
  it {should validate_presence_of(:show)}
end
