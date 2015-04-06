json.array!(@superheros) do |superhero|
  json.extract! superhero, :id
  json.url superhero_url(superhero, format: :json)
end
