class Dog < ActiveRecord::Base
  belongs_to :owner_id
  belongs_to :vet_id
end
