class Show < ActiveRecord::Base
  belongs_to :comedy_club

  has_many :acts,
    inverse_of: :show

  has_many :comedians,
    through: :acts

  validates_presence_of :comedy_club

  def pretty_start_time
    start_time.strftime("%A, %B %d at %l:%M %p")
  end

  def self.future
    Show.where("start_time >= ?", Date.today)
  end
end
