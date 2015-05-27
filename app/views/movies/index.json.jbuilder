json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :bro_score, :actors, :director, :description
  json.url movie_url(movie, format: :json)
end
