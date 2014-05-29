json.array!(@product_feedback_notes) do |product_feedback_note|
  json.extract! product_feedback_note, :id, :product_id, :user_id, :feedback_id, :content
  json.url product_feedback_note_url(product_feedback_note, format: :json)
end
