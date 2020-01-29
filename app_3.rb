# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
require 'pry'
require 'rubygems'
require 'open-uri'
require 'time'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/human_player'
require_relative 'lib/game'
require_relative 'lib/ennemies_list'

binding.pry
# puts "-------------------------------------------------"
# puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
# puts "|Le but du jeu est d'être le dernier survivant !|"
# puts "-------------------------------------------------"

# print "Choisi un pseudo : "
# player = HumanPlayer.new(gets.chomp.to_s)
# puts "Welcome #{player.name}, c'est parti pour le combat !"

# ennemies = ["Josiane", "José"].map do |name|
#   p = Player.new(name)
#   puts "#{name} crée"

#   p
# end

# while player.is_alive? && ennemies.find { |e| e.is_alive? } != nil
#   puts "#{player.show_state}"

#   puts "Quelle action veux-tu effectuer ?"
#   puts "a - chercher une meilleure arme"
#   puts "s - chercher à se soigner"
#   puts "\n\n"
#   puts "Attaquer un joueur en vue :"

#   # ennemies.select { |e| e.is_alive? } => ennemies alive
#   #
#   alive_ennemies = ennemies.select(&:is_alive?)

#   ennemies.select(&:is_alive?).each_with_index do |e, i|
#     print "#{i} - "
#     e.show_state
#   end

#   print ">>> "
#   choice = gets.chomp

#   case choice
#   when 'a'
#     player.search_weapon
#   when 's'
#     player.search_health_pack
#   else
#     if choice == "0" || choice.to_i > 0
#       e = alive_ennemies[choice.to_i]
#       player.attacks(e)
#     else
#       puts "Merci de choisir un choix du menu"

#       next # stop the loop and restart from the beginning
#     end
#   end

#   alive_ennemies.select(&:is_alive?).each { |e| e.attacks(player) }
# end

# if player.is_alive?
#   puts "GG TU AS GAGNE !"
# else
#   puts "LOOOOOOOOOOOOOOSER !"
# end