class User < ActiveRecord::Base

  has_secure_password

  validates_uniqueness_of :username
  validates :name, presence: true
  validates :username, presence: true

end
