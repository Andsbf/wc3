
require_relative 'Unit.rb'

class Peasant < Unit

  attr_reader :health_points

  def initialize
    @health_points = 35
    @attack_power = 0
    
  end

end
