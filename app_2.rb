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


def welcome_message

  puts "-------------------------------------------------"
  puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
  puts "|Le but du jeu est d'être le dernier survivant !|"
  puts "-------------------------------------------------"

end

def define_user_name
  print "Choisi un pseudo : "
  player_name = gets.chomp.to_s
  player = HumanPlayer.new(player_name)
  puts "Welcome #{player.name}, c'est parti pour le combat !"
  return player
end


def ennemies_array
  ennemies = []
  fighter1 = Player.new("Josiane")
  puts "Fighter : #{fighter1.name} prête à combattre !"
  ennemies << fighter1
  fighter2 = Player.new("José")
  puts "Fighter : #{fighter2.name} prêt à combattre !"
  ennemies << fighter2
  return fighter1
  return fighter2
  return ennemies
end


def player_action_menu(fighter2,fighter1)
  puts "Quelle action veux-tu effectuer ?"
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts "\n\n"
  puts "Attaquer un joueur en vue :"
  print "0 - "
  fighter1.show_state
  print "1 - "
  fighter2.show_state
  print ">>> "
  selected_menu = gets.chomp
  return selected_menu
end

def win_or_lose
  if player > 0
    return win
  else 
    return lose
  end
end

def win
  puts "GG TU AS GAGNE !"
end
def lose
  puts "Tu as perdu !"
end



welcome_message
define_user_name
ennemies_array
binding.pry
player_action_menu(fighter1,fighter2)


while (player.life_points > 0) && (fighter1.life_points > 0 || fighter2.life_points > 0)
  puts "#{player.show_state}"

# code à venir :p

end

