class Comedian < ActiveRecord::Base
  validates_presence_of :first_name
  has_many :acts
  mount_uploader :image, ImageUploader

  def name
    "#{first_name} #{last_name}"
  end
end
