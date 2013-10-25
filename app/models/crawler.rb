require 'cgi'
require 'nokogiri'
require 'open-uri'

class Crawler
  def initialize(url)
    @url = url
    @page = Nokogiri::HTML(open(url))
  end

  def shows
    shows = []

    date = @page.css('.show-search-title').text.gsub(/[\n|\t]/, "")

    @page.css('.show').each do |content|
      shows << ShowCrawler.new(content, date: date)
    end

    shows
  end

  def comedians_for(show)
    show.css('.comedian-block')
  end
end

class ShowCrawler
  attr_accessor :date

  def initialize(content, attributes={})
    @date = attributes.fetch(:date) { Date.today }
    @content = content
  end

  def start_time
    text = @content.css('.show-time').text
    matches = text.match /([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9] [pmPM]{2}/
    time = matches[0]

    DateTime.parse(@date + time)
  end
end
