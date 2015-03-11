# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'Unit.rb'

class Footman < Unit

  attr_reader :attack_power, :health_points

  def initialize
    @health_points = 60
    @attack_power = 10
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end


end
