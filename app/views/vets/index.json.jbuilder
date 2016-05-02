json.array!(@vets) do |vet|
  json.extract! vet, :id, :doctor, :clinic, :phone
  json.url vet_url(vet, format: :json)
end
