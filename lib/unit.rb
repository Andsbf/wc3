
class Unit

  attr_reader :health_points, :attack_power

  def initialize (health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
    
  end

  def attack!(enemy)
    
    if  enemy.kind_of? Barracks 
      return enemy.damage( (attack_power/2).ceil )
    end

    unless ( self.dead? || enemy.dead? ) 
      enemy.damage(attack_power)
    else
      false
    end
     
    
  end

  def damage(amount)
    @health_points -= amount
  end

  def dead?
    @health_points < 1 
  end

end


# aaa=Unit.new(30,60)
# aaa.health_points = 500
# p aaa.health_points