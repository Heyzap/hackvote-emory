class User < ActiveRecord::Base
  belongs_to :project
  has_many :votes

  validates :username, presence: true, length: { maximum: 50 },
                       uniqueness: {  case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
