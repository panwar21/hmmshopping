json.array!(@customerservices) do |customerservice|
  json.extract! customerservice, :id
  json.url customerservice_url(customerservice, format: :json)
end
