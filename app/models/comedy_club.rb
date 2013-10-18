class ComedyClub < ActiveRecord::Base
  has_many :shows, dependent: :destroy
  has_many :acts, through: :shows
  has_many :comedians, through: :acts

  mount_uploader :image, ImageUploader

  def update_shows
    crawler = Crawler.new(url_to_scrape)

    crawler.shows.each do |show|
      Show.create(time: show.time)
    end
  end
end
