class Hackday < ActiveRecord::Base
  has_many :projects

  validates :name, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
