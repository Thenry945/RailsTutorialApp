class User < ActiveRecord::Base
  belongs_to :user
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true
end
