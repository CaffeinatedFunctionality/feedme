json.array!(@user_feedback_notes) do |user_feedback_note|
  json.extract! user_feedback_note, :id, :user_id, :feedback_id, :content
  json.url user_feedback_note_url(user_feedback_note, format: :json)
end
