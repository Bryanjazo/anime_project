class Anime

  @@all = []

  def initialize(anime_array)
    anime_array.each do |key, value|
     self.class.attr_accessor(key)
     send("#{key}=", value)
   end
     @@all << self
   end

   def self.find_anime_obj(title)
     self.all.find { |obj| obj.title = title}
     #binidnig.pry
   end

  def self.all
   @@all
   # binding.pry
  end

end
