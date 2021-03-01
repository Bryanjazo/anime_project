class API
  def initialize
    @url = "https://api.jikan.moe/v3"
  end

  def get_genre(input)
    if input == "action"
      uri = URI(@url + "/genre/anime/1/1")
      anime_hash = Net::HTTP.get_response(uri)
      anime_array = JSON.parse(anime_hash.body)
      # return create_object(anime_array["anime"])
      # binding.pry
      # binding.pry
    elsif input == "adventure"
      uri = URI(@url + "/genre/anime/2/1")
      anime_hash = Net::HTTP.get_response(uri)
      anime_array = JSON.parse(anime_hash.body)
    elsif input == "cars"
      uri = URI(@url + "/genre/anime/3/1")
      anime_hash = Net::HTTP.get_response(uri)
      anime_array = JSON.parse(anime_hash.body)
    elsif input == "comedy"
      uri = URI(@url + "/genre/anime/4/1")
      anime_hash = Net::HTTP.get_response(uri)
      anime_array = JSON.parse(anime_hash.body)
    elsif input == "dementia"
      uri = URI(@url + "/genre/anime/5/1")
      anime_hash = Net::HTTP.get_response(uri)
      anime_array = JSON.parse(anime_hash.body)
    elsif input == "demons"
      uri = URI(@url + "/genre/anime/6/1")
      anime_hash = Net::HTTP.get_response(uri)
      anime_array = JSON.parse(anime_hash.body)
    elsif input == "mystery"
      uri = URI(@url + "/genre/anime/7/1")
      anime_hash = Net::HTTP.get_response(uri)
      anime_array = JSON.parse(anime_hash.body)
    end
    create_object(anime_array["anime"])
    # binding.pry
  end

  def create_object(anime_array)
    anime_array.each { |anime_hash| Anime.new(anime_hash) }
    # binding.pry
  end
end
