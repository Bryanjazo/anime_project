class Anime

  @@all = []

  def initialize(anime_array)
    anime_array.each do |key, value|
     self.class.attr_accessor(key)
     send("#{key}=", value)
   end
     @@all << self
   end

  def self.all
   @@all
  end

end
