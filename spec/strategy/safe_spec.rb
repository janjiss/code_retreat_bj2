require "rspec"
require "../../lib/boot.rb"

describe Strategy::Safe do
  it "should take card if hand sum is less or equal 11" do
  
    @aggressive = Strategy::Safe.new
  
    hand_1 = [2,3,4]
    @aggressive.take_card?(hand_1).should be_true
  
    hand_2 = [10,2]
    @aggressive.take_card?(hand_2).should be_true

  end
  it "should not take card if hand sum is more or equal 12" do
  
    @aggressive = Strategy::Safe.new
  
    hand_1 = [11,2]
    @aggressive.take_card?(hand_1).should be_false
  
    hand_2 = [10,10]
    @aggressive.take_card?(hand_2).should be_false

  end
end