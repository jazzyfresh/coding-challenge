json.array!(@tests) do |test|
  json.extract! test, :title, :overall_difficulty, :genre
  json.url test_url(test, format: :json)
end
