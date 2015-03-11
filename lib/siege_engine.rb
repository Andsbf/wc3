
require_relative 'unit.rb'

class SiegeEngine < Unit

  def initialize
    @health_points = 400
    @attack_power = 50
    
  end

  def attack!(enemy)

    if enemy.kind_of? Barracks
      enemy.damage(attack_power*2) 
    elsif enemy.kind_of? SiegeEngine
      enemy.damage(attack_power) 
    else
      false
    end       
  end
end
