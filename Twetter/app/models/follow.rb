class Follow < ActiveRecord::Base

  belongs_to :following, :class_name => "User"
  belongs_to :user

  validates :following, :presence => true
  validates :user, :presence => true

end
