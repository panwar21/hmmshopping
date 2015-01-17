json.array!(@searchn_view_items) do |searchn_view_item|
  json.extract! searchn_view_item, :id
  json.url searchn_view_item_url(searchn_view_item, format: :json)
end
