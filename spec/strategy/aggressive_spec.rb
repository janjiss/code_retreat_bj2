require "rspec"
require "../../lib/boot.rb"

describe Strategy::Aggressive do
  it "should take card if hand sum is less or equal 18" do
  
    @aggressive = Strategy::Aggressive.new
  
    hand_1 = [2,3,6]
    @aggressive.take_card?(hand_1).should be_true
  
    hand_2 = [10,8]
    @aggressive.take_card?(hand_2).should be_true

  end
  it "should not take card if hand sum is more or equal 19" do
  
    @aggressive = Strategy::Aggressive.new
  
    hand_1 = [10,9]
    @aggressive.take_card?(hand_1).should be_false
  
    hand_2 = [10,10]
    @aggressive.take_card?(hand_2).should be_false

  end
end