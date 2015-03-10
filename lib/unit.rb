
class Unit

  attr_reader :health_points, :attack_power

  def initialize (health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
    
  end

  def attack!(enemy)
    enemy.damage(attack_power)
  end

  def damage(amount)
    @health_points -= amount
  end

end


# aaa=Unit.new(30,60)
# aaa.health_points = 500
# p aaa.health_points