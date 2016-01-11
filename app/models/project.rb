class Project < ActiveRecord::Base
  has_many :votes
  belongs_to :hackday

  validates :name, presence: true
end
