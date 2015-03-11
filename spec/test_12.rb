require_relative 'spec_helper'


describe Unit do

  before :each do
    @unit = Unit.new(30,10)
  end

  describe "#dead?" do
    it "return false if hp of unit is bigger than 1" do
      expect(@unit.dead?).to be(false) # HP started at 500 but just got hit by 5(12/2) (see subject)
    end
  end

  describe "#dead?" do
    it "return true if hp of unit is smaller than 1" do
      @unit.damage(30)
      expect(@unit.dead?).to be(true) # HP started at 500 but just got hit by 5(12/2) (see subject)
    end
  end

end
