class Comedian < ActiveRecord::Base
  YOUTUBE_ID_REGEX = /(youtu\.be\/|youtube\.com\/(watch\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/

  validates_presence_of :first_name

  has_many :acts,
    inverse_of: :comedian

  has_many :shows,
    through: :acts,
    inverse_of: :comedians

  mount_uploader :image, ImageUploader

  def name
    "#{first_name} #{last_name}"
  end

  def youtube_id
    matches = YOUTUBE_ID_REGEX.match(self.youtube_url)
    matches[5] if matches.present?
  end
end
