require 'spec_helper'

describe Comedian do
  it { should validate_presence_of(:first_name)}
  it {should have_many(:acts)}

  describe "#youtube_id" do
    let(:comedian) { Comedian.new }
    let(:id) { 'bMzqiGG5Udg' }
    let(:youtube_url) { "http://www.youtube.com/watch?v=#{id}" }
    let(:nonmatching_url) { "http://www.google.com" }

    it "returns the id from the youtube url" do
      comedian.youtube_url = youtube_url
      expect(comedian.youtube_id).to eq(id)
    end

    it "returns the id from the youtube url" do
      comedian.youtube_url = nonmatching_url
      expect(comedian.youtube_id).to be nil
    end
  end
end
