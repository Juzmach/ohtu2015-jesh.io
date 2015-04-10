json.array!(@references) do |reference|
  json.extract! reference, :id, :reference_type, :author, :title, :year, :publisher
  json.url reference_url(reference, format: :json)
end
