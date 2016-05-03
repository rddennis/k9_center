class Vet < ActiveRecord::Base
  has_many :dogs

  validates :doctor, presence: true, length: {minimum: 2}
  validates :clinic, presence: true, length: {minimum: 3}
  validates :phone, presence: true, numericality: {only_integer: true}
end
