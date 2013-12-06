json.array!(@questions) do |question|
  json.extract! question, :content, :number
  json.url question_url(question, format: :json)
end
