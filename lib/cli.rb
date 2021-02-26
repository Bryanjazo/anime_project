class CLI

def run
  greeting
  menu
  puts "Enter which of the top 10 youre interested about?"
  user_input
end

  def greeting
    puts "Greeting's fellow weeb, lets get started on finding the best anime for you!"
    sleep(1)
    puts "Let's start with your favorite genre, please type in your favorite genre from the following categories below!"
    sleep(1)
  end

    def menu
      puts "Action, Cars, Adventure, Comedy, Dementia, Demons, Mystery, or our choice"
      @input = nil
      #this loop needs to go in the menu
      while @input != "exit"
        @input = gets.strip.downcase.chomp
        API.new.get_genre(@input)
        Anime.all.each.with_index(1) do |anime_object, index|
          puts "#{index}. #{anime_object.title}"
        end
      end
      @input
    end

    def user_input
      @input = nil
      while @input != "exit"
        @input = gets.strip.downcase.chomp
        case @input
        when "1"
          puts "more infor on #1 please"
        when "2"
          puts "more infor on #2 please"
        when "3"
          puts "more infor on #3 please"
        when "4"
          puts "more infor on #4 please"
        when "5"
          puts "more infor on #5 please"
        when "6"
          puts "more infor on #6 please"
        when "7"
          puts "more infor on #7 please"
        when "8"
          puts "more infor on #8 please"
        when "9"
          puts "more infor on #9 please"
        when "10"
          puts "more infor on #10 please"
        end
      end
    end


#   while input != "exit"
#     @input = gets.strip.downcase.chomp
#     case input
#     when "action"
#   else
#     leave_menu
#   end
# end
#   def conversation
#   input = "nil"
#   while input != "exit"
#   input = gets.strip.downcase
#   case input
#   when "action"
#     puts " "
#   else
#     leave_menu
#   end
# end


  def leave_menu
    puts "Have fun watching your new show!"
  end
end
