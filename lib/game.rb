class Game
  attr_accessor :human_player, :ennemies
  def initialize(player, number_of_ennemies = 4)
    @player = HumanPlayer.new("#{player}")
    @ennemies_list = EnnemiesList.new(number_of_ennemies)
  end

end

  

# myGame =