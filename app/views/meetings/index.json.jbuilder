json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :date, :lesson_id, :section_id
  json.url meeting_url(meeting, format: :json)
end
