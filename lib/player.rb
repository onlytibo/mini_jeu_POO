class Player
  attr_accessor :name, :life_points

  def initialize(name, life_points=10)
    @name = name.to_s
    @life_points = life_points.to_i
  end

  def show_state
    if @life_points > 1
      puts "#{@name} à #{@life_points} points de vie"
    else
      puts "#{@name} à #{@life_points} point de vie"
    end
  end

  def gets_damage(damage)
    @life_points = @life_points - damage.to_i
    
    if @life_points <= 0
      puts "Le joueur #{@name} subit #{damage} points de dommage. Il est mort :)"
    else
      puts "Le joueur #{@name} subit #{damage} points de dommage."
    end

  end

  def attacks(player_to_attack)
    puts "#{@name} attaque #{player_to_attack.name}."
    damage_done = compute_damage
    player_to_attack.gets_damage(damage_done)
    # puts "Il lui inflige #{damage_done} points de dommage."
  end

  def compute_damage
    return rand(1..6)
  end

end