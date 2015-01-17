json.array!(@my_accounts) do |my_account|
  json.extract! my_account, :id
  json.url my_account_url(my_account, format: :json)
end
