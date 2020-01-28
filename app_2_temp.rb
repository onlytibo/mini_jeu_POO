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

def choose_player_name
  print "Choisi un pseudo : "
  player_name = gets.chomp.to_s
  return player_name
end

def set_player_name(player_name)
  @player = HumanPlayer.new(player_name)
  puts "Welcome #{@player.name}, c'est parti pour le combat !"
  return @player
end

def create_ennemies
  @fighter1 = Player.new("Josiane")
  puts "#{@fighter1.name} créé"
  @fighter2 = Player.new("José")
  puts "#{@fighter2.name} créé"
  ennemies = [@fighter1, @fighter2]
  return ennemies
end

def display_menu
  puts "Quelle action veux-tu effectuer ?"
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts "\n\n"
  puts "Attaquer un joueur en vue :"
  print "0 - "
  @fighter1.show_state
  print "1 - "
  @fighter2.show_state
  user_choice
end

def user_choice
  print ">>> "
  selected_menu = gets.chomp
  menu_response(selected_menu)
  return selected_menu
end

def menu_response(selected_menu)
  if selected_menu == "a"
    puts "tu as choisis a"

  elsif selected_menu == "s"
    puts "tu as choisis s"
  elsif selected_menu == "0"
    puts "tu as choisis 0"
  elsif selected_menu == "1"
    puts "tu as choisis 1"
  else
    puts "Merci de choisir un choix du menu"
    user_choice
  end
end

def win_or_lose
  if player > 0
    return win
  else 
    return lose
  end
end

def fight
  while (@player.life_points > 0) && (@fighter1.life_points > 0 || @fighter2.life_points > 0)
    puts "#{@player.show_state}"
    display_menu
  end
end

def win
  puts "GG TU AS GAGNE !"
end
def lose
  puts "Tu as perdu !"
end

welcome_message  
player_name = choose_player_name
player = set_player_name(player_name)
ennemies = create_ennemies
