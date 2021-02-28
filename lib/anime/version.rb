# # frozen_string_literal: true
# class CLI
#
#   attr_accessor :titles
#
#   def run
#     greeting
#     menu
#   end
#
#   def greeting
#     puts "
#      yyyyhdysoyo:+so---`  .:/:-.....-..-`.     `:o`...---.`/o/`-  `./y+:///dh/`.//+:-:hh+-yoyhmmmdmmmmmdd
#     ssssyhs++o:.+y/-:m+-    ``--::::-.`-/.   `:`:..---:--.:---`````-++-/`-ho.`..``+/.sd/oy::dmdhdmmmmmmm
#     osssyys.sy/.-//+oh:- `..-.    `.--::/:`   ./..-.-` :-....-.---.``.`..:-.`.``+y..`syyo:-odddyhmmmmmmm
#     oosyhy/-sdo/``/so-`o:.-/+y- `     `.-++`   `.`.:.`///+//+/---:...../-`    `--/```.o++`.+yhmysdmmmddd
#     //+shs+-+my-.`/ys-.omo-++m/ `/:`   `.-:-`  .-:::-/.` `.` .--../.... ``....------- -.` `-ohoy/yNNmddd
#     ::/+oy+.:dmo/-+os../+..+ohh.`:..     `----`--:-```..-`-.  ./.  -..------:--...... .:.`.:s+hy+hmmmddm
#     -:://o:-/dmho/os+/  `.`..`-``:. ``` `---- `:-``:++//:///o  /:. .-.+.--:`.-.`    .od+.`::++y+hhmmmmmm
#     --:/+o/:sddhys+hy/-`` `..-:----.`--``--`/ -. -///------:/`:--`` :.-`..`` .`` `/--ds-..+//sydhmmmmmmm
#     -:/+oyo:yddho++shy-.`   `...--:-:++...`/+..`::.`..```.--..`-::- /.. `.::`  -o/--ss/:``:/+ymdhdmmmmdd
#     :/+oshho+hmd+//ymdo+-..    ``.-...-: .`+:.`-.::-`  `` .`.--..:.-.``-:.` `----.`````/o.-o-+sshdmmmmdd
#     oossyhdy//hd+:ssyhs+-.. .      `...``.`.--` -./:..-:..`./+.`.``..`-  `.-:--.....:.-hh.-o--+yhmmmmddd
#     osssyhddo/oy/-yh::y+.+o/-``+.       -//`  ``.--:.``. .---.``  -.-:- ----.```  `:o`-hh::+:ohddmddmddd
#     yyyyyyhmdy+s/-hh:/h/.oh+.  +-``..-:```/:.`  ``.. .::-`-..`` `` -/` ````    .. `:+.-dy/sssddydmmmmddd
#     yyyyhhhdmhoo+:hs./h+-+/:-` -` ...``` `:--        `+//         `.` ..--/+/`./::-:os/dyohddmdhmmmmmddd
#     syhdmdyhmdyoyoo:..o/oy/++.:--  ` .:+-  `-`        ````        `  -.``-.---:y/:/oyoymy/+mddmmmmdddddm
#     ohddmddmmmdysyh/`:+/hd+:s+h+``-.-:ss: `.-.        -:-        .-+o--s+yyoss:sohohssdNmmmmhydmdmdddddm
#     -sddmddmNohdmyo:`:sydo-/dds-:o:+s-oy-  `` ``      .-.`    .- ::o+`-oy/:dh+ss/yys+s+dmdmmy+hshmddddmm
#     o/hmmmhdm+yhms.`-oy++:`+ds-o+.-:s/.``  `    -:`        `-++` ...``-/o-+y/o:o.-o/oh+ohymdo:o+hmmdddmm
#     y/hNNdoyhhh+ys-`.+y/+`.s/-.s+`  `:-    `    `-o+:.   ./s++`  ``-. -`..:sd+./.`:oss+/s/yd+:y/:hddmdhm
#     o:yNmho+-hh:-//-.::`.`-o` -o--`  .`  `.    `-..o+/+oss+:/..    ```  `.:dy-`+-.`:yh-/ho+ho/yy:yddmhym
#     s+sNmos/`-oo+.:o. `   .-  -:`.   `.-:/+  ``--+.`//.`.-.--./` ``  ` `--+y/` ./-/o/-:/yo/+ssyy:ommdsym
#     yo/dh/+:  oh.`:- .`    `  ```  `..``....-.-.:/` `::.  .-`s+--:+-.`   .:o:`  .:/- `/oso-:++o+.omh++ym
#     y/`+oy/.`:/+.`-`......---```.-:---::/:.`/+/::::--.::.-/` ::.-..`.......--` ``./+- ./+....ys--hdy:/hd
#     +/`-yo` .:.`.-.`---..-::` `-:::::::::://./:---::/:---.-..:::::::::::---::---.```.`` -..`-o.`odds-.sh
#     -/..y- `..---::.-/+-.-- `-`-::-------:////:--:://////::::--:::--:://..:::.---:::..`  ````:.`+yh++.-/
#     +:.:+``.-::/+//:--:..`  `-/+:::-------::::::::///`.///oo/:/++:---:/.`-:::--::---::-...`` ``./yo.`.s+
#     o-.:.`/:+/:-.s+:...` `  `::- ::---..---::::::///`:///::. `-::----::.---:---::--..-.-:--.``.-/--```os
#     o::-`.:.    `.      :    `.` ::---..------:::++:::-..`     `.--.--::-.-------::::``-s/+::``. ` `.:y+"
#     sleep(5)
#     #puts "Greeting's fellow weeb, lets get started on finding the best anime for you!"
#     #sleep(1)
#     #puts "Let's start with your favorite genre, please type in your favorite genre from the following categories below!"
#     #sleep(1)
#   end
#
#     def menu
#
#
#
#       #puts "Action, Cars, Adventure, Comedy, Dementia, Demons"
#       @input = nil
#           if @input != "exit"
#             @input = gets.strip.downcase.chomp
#                 API.new.get_genre(@input)
#                 @titles = Anime.all.map { |obj| obj.title}
#                 @titles.each.with_index(1) do |title, index|
#                   if index <= 20
#                       puts "#{index}. #{title}"
#             end
#           end
#           puts "Which anime would you like to choose for more information?"
#           input = gets.chomp
#           anime = Anime.find_anime_obj(@titles[input.to_i - 1])
#           puts anime.synopsis
#           puts "would you like to choose a different genre? yes/no"
#           @input = gets.chomp
#           if @input == "yes"
#               menu
#             else
#               puts "FINE have a life then :/"
#               exit
#             end
#             end
#         end
#
#     def user_input(input)
#       sleep(1)
#       new_input = input.to_i
#     end
#
#     def genre_selection
#       genre_array = ["Action", "Cars", "Adventure", "Comedy", "Dementia", "Demons"]
#       genre
#     end
#
#
#
#
#   def leave_menu
#     puts "Have fun watching your new show!"
#   end
# end
