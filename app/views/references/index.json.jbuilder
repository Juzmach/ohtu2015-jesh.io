json.array!(@references) do |reference|
  json.extract! reference, :id, :type, :author, :title, :year, :publisher
  json.url reference_url(reference, format: :json)
end
