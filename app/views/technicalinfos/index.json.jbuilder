json.array!(@technicalinfos) do |technicalinfo|
  json.extract! technicalinfo, :id
  json.url technicalinfo_url(technicalinfo, format: :json)
end
