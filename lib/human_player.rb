class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name, weapon_level=1, life_points=100)
    @weapon_level = weapon_level.to_i
    super(name, life_points)
  end

  def show_state
    puts "#{@name} à #{life_points} points de vie et une arme de niveau #{weapon_level} !"
  end

  def compute_damage
    return rand(1..6) * @weapon_level
  end

  def search_weapon
    weapon_found_level = rand(1..6)
    puts "Hey #{@name}, tu as trouvé une arme de niveau #{weapon_found_level}"

    if weapon_found_level > @weapon_level
      @weapon_level = weapon_found_level
      puts "L'arme vient d'être équipé !"
    else
      puts "M@*\#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    heal_pack_level = rand(1..6)

    if heal_pack_level == 1
      puts "Tu n'as rien trouvé"
    
    elsif heal_pack_level >= 2 && heal_pack_level <= 5
      # @life_points = [@life_points + 50, 100].min

      if @life_points + 50 > 100 && @life_points != 100
        @life_points = 100
        puts "Tu as trouvé +50pv ! Tu as now #{@life_points}pv"
      elsif @life_points == 100
        puts "Tu as trouvé +50pv, mais tu as déjà le max de points de vie !"
      else
        @life_points = @life_points + 50
        puts "Tu as trouvé +50pv ! Tu as now #{@life_points}pv"
      end

    else @life_points == 6
      
      if @life_points + 80 > 100 && @life_points != 100
        @life_points = 100
        puts "Tu as trouvé +80pv ! Tu as now #{@life_points}pv"
      elsif @life_points == 100
        puts "Tu as trouvé +80pv, mais tu as déjà le max de points de vie !"
      else
        @life_points = @life_points + 80
        puts "Woaw, +80pv ! Tu as now #{@life_points}pv"      
      end
    end
  end
end