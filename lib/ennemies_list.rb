class EnnemiesList

  def initialize(n)
    ennemies = []
    for i in 1..n do
      ennemies << Player.new("fighter#{i}")
      puts "Fighter#{i} créé !"
      ennemies
    end 
    ennemies
  end

end
