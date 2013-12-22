class User < ActiveRecord::Base

  has_secure_password

  validates_uniqueness_of :username
  validates :name, presence: true
  validates :username, presence: true

  has_many :twets
  has_many :follows

  def all_twets
    Twet.by_user_ids(id)
  end

  def self.all_except(user)
    User.where(arel_table[:id].not_eq(user.id)).order(:name)
  end

end
