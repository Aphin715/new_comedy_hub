require 'spec_helper'

describe Comedian do
 it { should validate_presence_of(:first_name)}
 it {should have_many(:acts)}
end
