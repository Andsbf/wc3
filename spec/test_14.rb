require_relative 'spec_helper'


describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#initialize" do
    it"Barracks initialize have 500 lumber and it is readable" do
      expect(@barracks.lumber).to eq(500)
    end
  end


    describe "#initialize" do
      it"Barracks initialize lumber can be edited" do
        expect(@barracks.lumber).to eq(500)
      end
    end
end