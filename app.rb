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
# users
player1 = Player.new("Josiane")
player2 = Player.new("José")
human1 = HumanPlayer.new("Thibaut")

  
binding.pry

def fight(player1, player2)

  while player1.life_points > 0 && player2.life_points >0 do

    puts "Voilà l'état de chaque joueur :"
    
    player1.show_state
    player2.show_state
    
    puts "\n\n"+"-"*10+"\n\n"
    
    puts "Passons à la phase d'attaque :"
    
    player1.attacks(player2)
    
    if player2.life_points > 0
    
      player2.attacks(player1)
    
    else
    
      break
    
    end
    
    puts "\n\n"+"-"*10+"\n\n"
  
  end
  
  puts "Combat fini ! :)"

end

fight(player1,player2)