json.array!(@user_notes) do |user_note|
  json.extract! user_note, :id, :user_id, :content
  json.url user_note_url(user_note, format: :json)
end
