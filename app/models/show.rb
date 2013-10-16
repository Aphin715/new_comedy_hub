class Show < ActiveRecord::Base
  belongs_to :comedy_club

  has_many :acts,
    inverse_of: :show

  has_many :comedians,
    through: :acts

  validates_presence_of :comedy_club

  def self.future
    Show.where("start_time >= ?", Date.today)
  end
end
