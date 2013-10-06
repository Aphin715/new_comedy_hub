class Show < ActiveRecord::Base
  belongs_to :comedy_club

  has_many :acts
  has_many :comedians,
    through: :acts

  validates_presence_of :comedy_club
end
