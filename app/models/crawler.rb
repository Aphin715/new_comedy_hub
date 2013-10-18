require 'cgi'
require 'nokogiri'
require 'open-uri'

class Crawler
  def initialize(url)
    @url = url
    @page = Nokogiri::HTML(open("http://www.comedycellar.com/line-up/"))
  end

  def shows
    shows = []

    @page.css('.show').each do |content|
      shows << ShowCrawler.new(content)
    end

    shows
  end

  def comedians_for(show)
    show.css('.comedian-block')
  end
end

class ShowCrawler
  def initialize(content)
    @content = content
  end

  def start_time
    text = @content.css('.show-time').text
    matches = text.match /([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9] [pmPM]{2}/
    matches[0]
  end
end
