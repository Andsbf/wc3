require_relative 'spec_helper'


describe Unit do

  before :each do
    @unit_live = Unit.new(30,10)
    @enemy_live = Unit.new(30,10)
    @unit_dead = Unit.new(0,10)
    @enemy_dead = Unit.new(0,10)
  end

  describe "#attack!" do
    it "return enemy_live health after attack" do
      expect(@unit_live.attack!(@enemy_live)).to eq(20)
    end
  end

  describe "#attack!" do
    it "return nil because enemy_live is already dead" do
      expect(@unit_live.attack!(@enemy_dead)).to eq(nil)
    end
  end

  describe "#attack!" do
    it "return nil because unit is already dead" do
      expect(@unit_dead.attack!(@enemy_live)).to eq(nil)
    end
  end

  describe "#attack!" do
    it "return nil because both are already dead" do
      expect(@unit_dead.attack!(@enemy_dead)).to eq(nil)
    end
  end

end