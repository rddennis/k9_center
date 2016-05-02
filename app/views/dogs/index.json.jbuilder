json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :dob, :checked_in, :owner_id_id, :vet_id_id, :info
  json.url dog_url(dog, format: :json)
end
