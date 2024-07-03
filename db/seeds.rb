require 'net/http'
require 'json'
require 'faker'

data_url = "https://www.freetogame.com/api/games"
data_uri = URI(data_url)

game_data_response = Net::HTTP.get(data_uri)

games_json = JSON.parse(game_data_response)

for game_data in games_json
  genre = Genre.find_or_create_by(name: game_data["genre"])
  platform = Platform.find_or_create_by(name: game_data["platform"])
  publisher = Publisher.find_or_create_by(name: game_data["publisher"])

  Game.create(title: game_data["title"],
              image: game_data["thumbnail"],
              description: game_data["short_description"],
              genre: genre,
              platform: platform,
              publisher: publisher,
              release_date: game_data["release_date"],
              downloads: Faker::Number.number(digits: 5)
             )
end
