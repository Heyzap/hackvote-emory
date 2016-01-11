class Project < ActiveRecord::Base
  has_many :votes
  belongs_to :hackday
end
