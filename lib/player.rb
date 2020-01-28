class Player
  attr_accessor :name, :life_points

  def initialize(name, life_points=10)
    @name = name.to_s
    @life_points = life_points.to_i
  end

  def show_state
    puts "#{@name} à #{@life_points} point#{@life_points > 1 ? "s" : ""} de vie"
  end

  def is_alive?
    @life_points > 0
  end

  def gets_damage(damage)
    @life_points -= damage.to_i
    
    if !is_alive?
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