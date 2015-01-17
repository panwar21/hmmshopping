json.array!(@keepmeposteds) do |keepmeposted|
  json.extract! keepmeposted, :id
  json.url keepmeposted_url(keepmeposted, format: :json)
end
