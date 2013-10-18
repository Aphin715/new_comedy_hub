require 'spec_helper'

describe Crawler, :vcr do
  describe "#shows" do
    it 'returns all the shows for a club' do
      crawler = Crawler.new("http://www.comedycellar.com/line-up/")
      expect(crawler.shows.count).to eq 3
    end
  end

  describe "#comedians_for(show)" do
    it "returns all of the comedians" do
      crawler = Crawler.new("http://www.comedycellar.com/line-up/")
      show = crawler.shows.first
      expect(crawler.comedians_for(show).count).to eq 6
    end
  end
end

describe ShowCrawler, :vcr do
  describe "#start_time" do
    it "returns the start time of the show" do
      crawler = Crawler.new("http://www.comedycellar.com/line-up/")
      show = crawler.shows.first
      expect(show.start_time).to eq "8:00 pm"
    end
  end
end

