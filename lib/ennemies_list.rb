class EnnemiesList
  attr_accessor :total_ennemies, :ennemies
  def initialize(n)
    ennemies = []
    @total_ennemies = n
    for i in 1..n do
      ennemies << Player.new("fighter#{i}")
      puts "Fighter#{i} créé !"
      ennemies
    end 
    @ennemies = ennemies
  end

  def kill_fighter(fighter)
    @ennemies

  end

end
