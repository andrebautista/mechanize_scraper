json.array!(@websites) do |website|
  json.extract! website, :url, :description
  json.url website_url(website, format: :json)
end
