json.array!(@sections) do |section|
  json.extract! section, :id, :workshop_id
  json.url section_url(section, format: :json)
end
