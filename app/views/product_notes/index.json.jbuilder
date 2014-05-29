json.array!(@product_notes) do |product_note|
  json.extract! product_note, :id, :product_id, :isprivate, :user_id, :content
  json.url product_note_url(product_note, format: :json)
end
