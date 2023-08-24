require 'json'
require 'open-uri'
url = 'https://tmdb.lewagon.com/movie/top_rated'
movies_api_content = URI.open(url).read
movies = JSON.parse(movies_api_content)
movies["results"].each do |movie|
  movie["title"]
end
