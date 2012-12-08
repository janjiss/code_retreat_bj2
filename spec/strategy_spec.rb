require "rspec"
require "../lib/boot.rb"

describe Strategy do
  it "should tell the player, if he should take a card" do
    hand = [10,11]
    @strategy = Strategy.new
    @strategy.take_card?(hand).should be_true
  end
end