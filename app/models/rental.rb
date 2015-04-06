class Rental < ActiveRecord::Base
  belongs_to :user
  belongs_to :superhero
  has_many :ratings

  validates :reason, presence: true
end
