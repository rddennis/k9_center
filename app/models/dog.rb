class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :owner
  belongs_to :vet

  validates :name, presence: true, length: {minimum: 2}
  validates :dob, presence: true
  validates :checked_in, presence: true
  validates :owner_id, presence: true
  validates :breed_id, presence: true
  validates :vet_id, presence: true
end
