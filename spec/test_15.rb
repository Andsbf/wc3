require_relative 'spec_helper'


describe Unit do

  before :each do
    @unit1 = Unit.new(30,10)
    @unit2 = Unit.new(30,10)
    @barracks = Barracks.new
    @siege1 = SiegeEngine.new

  end

  describe "#attack!" do
    it"attack only half power attack against barrack" do
      expect(@unit1.attack!(@barracks)).to eq(495)
    end
  end

  describe "#attack!" do
    it"attack full power attack against unit" do
      expect(@unit1.attack!(@unit2)).to eq(20)
    end
  end

  describe "#attack!" do
    it"attack  power attack against unit" do
      expect(@unit1.attack!(@unit2)).to eq(20)
    end
  end

end

describe SiegeEngine do

  before :each do
    @siege1 = SiegeEngine.new
    @siege2 = SiegeEngine.new
    @barracks = Barracks.new
    @unit = Unit.new(30,10)
  end

  describe "#attack!" do
    it"attack 2*power attack against barrack" do
      expect( @siege1.attack!(@barracks)).to eq(400)
    end
  end

  describe "#attack!" do
    it"attack normal power attack against Siege" do
      expect(@siege1.attack!(@siege2)).to eq(350)
    end
  end

  describe "#attack!" do
    it"Don't attack against unit" do
      expect(@siege1.attack!(@unit2)).to eq(false)
    end
  end









end
