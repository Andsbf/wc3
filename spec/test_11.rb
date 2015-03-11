require_relative 'spec_helper'


describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#damage" do
    it "should reduce the barracks's health_points by half the attack_power specified (rounded down)" do
      @barracks.damage(10)
      expect(@barracks.health_points).to eq(495) # HP started at 500 but just got hit by 5(12/2) (see subject)
    end
  end
end
