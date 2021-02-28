class CLI

  attr_accessor :titles

  def run
    flag
    greeting
    menu
  end

  def greeting
    puts "Greeting's fellow weeb, lets get started on finding the best anime for you!".colorize(:cyan)
    sleep(1)
    puts "Let's start with your favorite genre, please type in your favorite genre from the following categories below!".colorize(:cyan)
    sleep(1)
  end

    def menu
      puts "Action, Cars, Adventure, Comedy, Dementia, Demons".colorize(:cyan)
      input = gets.strip.downcase.chomp
      if input == "action" || input == "cars" || input == "adventure" || input == "comedy" || input == 'dementia' || input == 'demons'
                 API.new.get_genre(input)
                 @titles = Anime.all.map { |obj| obj.title}
                 #binding.pry
                 @titles.each.with_index(1) do |title, index|
                   if index <= 20
                       puts "#{index}. #{title}"
                     end
                    end
                synopsis
      else
        puts "Thats not what I was asking SIR".colorize(:cyan)
        menu
    end
end





def synopsis
  puts "Which anime would you like to choose for more information? pick it by the number!".colorize(:cyan)
    input = gets.chomp
    anime = Anime.find_anime_obj(@titles[input.to_i - 1])
    puts anime.synopsis
    puts "Would you like to choose a different genre? yes/no".colorize(:cyan)
    input = gets.chomp
    if input == "yes"
        menu
      elsif input == "no"
        puts "FINE have a life then :/".colorize(:cyan)
        exit
      else
        puts "uhhh you okay? let me take you back so you can decide again or type exit/no to leave menu.".colorize(:cyan)
        menu
      end

end

  def flag
    puts "
     yyyyhdysoyo:+so---`  .:/:-.....-..-`.     `:o`...---.`/o/`-  `./y+:///dh/`.//+:-:hh+-yoyhmmmdmmmmmdd
    ssssyhs++o:.+y/-:m+-    ``--::::-.`-/.   `:`:..---:--.:---`````-++-/`-ho.`..``+/.sd/oy::dmdhdmmmmmmm
    osssyys.sy/.-//+oh:- `..-.    `.--::/:`   ./..-.-` :-....-.---.``.`..:-.`.``+y..`syyo:-odddyhmmmmmmm
    oosyhy/-sdo/``/so-`o:.-/+y- `     `.-++`   `.`.:.`///+//+/---:...../-`    `--/```.o++`.+yhmysdmmmddd
    //+shs+-+my-.`/ys-.omo-++m/ `/:`   `.-:-`  .-:::-/.` `.` .--../.... ``....------- -.` `-ohoy/yNNmddd
    ::/+oy+.:dmo/-+os../+..+ohh.`:..     `----`--:-```..-`-.  ./.  -..------:--...... .:.`.:s+hy+hmmmddm
    -:://o:-/dmho/os+/  `.`..`-``:. ``` `---- `:-``:++//:///o  /:. .-.+.--:`.-.`    .od+.`::++y+hhmmmmmm
    --:/+o/:sddhys+hy/-`` `..-:----.`--``--`/ -. -///------:/`:--`` :.-`..`` .`` `/--ds-..+//sydhmmmmmmm
    -:/+oyo:yddho++shy-.`   `...--:-:++...`/+..`::.`..```.--..`-::- /.. `.::`  -o/--ss/:``:/+ymdhdmmmmdd
    :/+oshho+hmd+//ymdo+-..    ``.-...-: .`+:.`-.::-`  `` .`.--..:.-.``-:.` `----.`````/o.-o-+sshdmmmmdd
    oossyhdy//hd+:ssyhs+-.. .      `...``.`.--` -./:..-:..`./+.`.``..`-  `.-:--.....:.-hh.-o--+yhmmmmddd
    osssyhddo/oy/-yh::y+.+o/-``+.       -//`  ``.--:.``. .---.``  -.-:- ----.```  `:o`-hh::+:ohddmddmddd
    yyyyyyhmdy+s/-hh:/h/.oh+.  +-``..-:```/:.`  ``.. .::-`-..`` `` -/` ````    .. `:+.-dy/sssddydmmmmddd
    yyyyhhhdmhoo+:hs./h+-+/:-` -` ...``` `:--        `+//         `.` ..--/+/`./::-:os/dyohddmdhmmmmmddd
    syhdmdyhmdyoyoo:..o/oy/++.:--  ` .:+-  `-`        ````        `  -.``-.---:y/:/oyoymy/+mddmmmmdddddm
    ohddmddmmmdysyh/`:+/hd+:s+h+``-.-:ss: `.-.        -:-        .-+o--s+yyoss:sohohssdNmmmmhydmdmdddddm
    -sddmddmNohdmyo:`:sydo-/dds-:o:+s-oy-  `` ``      .-.`    .- ::o+`-oy/:dh+ss/yys+s+dmdmmy+hshmddddmm
    o/hmmmhdm+yhms.`-oy++:`+ds-o+.-:s/.``  `    -:`        `-++` ...``-/o-+y/o:o.-o/oh+ohymdo:o+hmmdddmm
    y/hNNdoyhhh+ys-`.+y/+`.s/-.s+`  `:-    `    `-o+:.   ./s++`  ``-. -`..:sd+./.`:oss+/s/yd+:y/:hddmdhm
    o:yNmho+-hh:-//-.::`.`-o` -o--`  .`  `.    `-..o+/+oss+:/..    ```  `.:dy-`+-.`:yh-/ho+ho/yy:yddmhym
    s+sNmos/`-oo+.:o. `   .-  -:`.   `.-:/+  ``--+.`//.`.-.--./` ``  ` `--+y/` ./-/o/-:/yo/+ssyy:ommdsym
    yo/dh/+:  oh.`:- .`    `  ```  `..``....-.-.:/` `::.  .-`s+--:+-.`   .:o:`  .:/- `/oso-:++o+.omh++ym
    y/`+oy/.`:/+.`-`......---```.-:---::/:.`/+/::::--.::.-/` ::.-..`.......--` ``./+- ./+....ys--hdy:/hd
    +/`-yo` .:.`.-.`---..-::` `-:::::::::://./:---::/:---.-..:::::::::::---::---.```.`` -..`-o.`odds-.sh
    -/..y- `..---::.-/+-.-- `-`-::-------:////:--:://////::::--:::--:://..:::.---:::..`  ````:.`+yh++.-/
    +:.:+``.-::/+//:--:..`  `-/+:::-------::::::::///`.///oo/:/++:---:/.`-:::--::---::-...`` ``./yo.`.s+
    o-.:.`/:+/:-.s+:...` `  `::- ::---..---::::::///`:///::. `-::----::.---:---::--..-.-:--.``.-/--```os
    o::-`.:.    `.      :    `.` ::---..------:::++:::-..`     `.--.--::-.-------::::``-s/+::``. ` `.:y+".colorize(:blue)
    sleep(2)
  end
end
