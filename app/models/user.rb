class User < ActiveRecord::Base
  belongs_to :project
  has_many :votes
end
