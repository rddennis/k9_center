json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :dob, :checked_in, :breed_id, :owner_id, :vet_id, :info
  json.url dog_url(dog, format: :json)
end
