class Act < ActiveRecord::Base
  belongs_to :comedian
  belongs_to :show
  validates_presence_of :show
  validates_presence_of :comedian
end
