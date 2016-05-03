class Breed < ActiveRecord::Base
  has_many :dogs

  validates :name, presence: true, length: {minimum: 2}
end
