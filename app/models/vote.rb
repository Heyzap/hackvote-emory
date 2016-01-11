class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :user, presence: true
end
