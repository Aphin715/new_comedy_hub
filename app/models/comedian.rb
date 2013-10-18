class Comedian < ActiveRecord::Base
  # YOUTUBE_ID_REGEX = /(youtu\.be\/|youtube\.com\/(watch\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/

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

  def youtube_embed(youtube_url)
    if youtube_url[/youtu\.be\/([^\?]*)/]
      youtube_id = $1
    else
      # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end

    %Q{iframe title="YouTube video player" width="450" height="300" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen}
  end
end
