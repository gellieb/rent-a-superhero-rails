class User < ActiveRecord::Base
  has_secure_password
  has_many :rentals
  has_many :superheros, through: :rentals
  has_many :ratings, through: :rentals

  before_save { self.email = email.downcase }
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

end
