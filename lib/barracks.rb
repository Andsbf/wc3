class Barracks

  attr_accessor :gold, :food, :lumber
  attr_reader :health_points

  def initialize
    @gold = 1_000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def damage(amount)

    @health_points -= amount

  end

  def train_footman
    
    if can_train_footman? 
      @gold -= 135
      @food -= 2
      Footman.new
    else
      nil
    end  
  end

  def can_train_footman?
    ( gold >= 135 && food >= 2 )
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      peasant = Peasant.new
    else
      nil
    end

  end

  def can_train_peasant?
    ( gold >= 90 && food >= 5 )
  end

  def can_train_siege?
    ( gold >= 200 && food >= 3 && lumber >= 60 )
  end

  def train_siege
    if can_train_siege
      @gold -= 200
      @food -= 3
      @lumber -= 60
    else
      false
    end

    
  end

end
