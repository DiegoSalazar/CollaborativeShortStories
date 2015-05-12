json.array!(@phrases) do |phrase|
  json.extract! phrase, :id, :text, :parent_id, :child_count, :match_count
  json.url phrase_url(phrase, format: :json)
end
