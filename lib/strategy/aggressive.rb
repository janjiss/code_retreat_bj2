module Strategy
  class Aggressive < Base
    def take_card?(hand)
      summ = hand.inject {|sum, x| sum+x}
      summ <= 18 
    end
  end
end