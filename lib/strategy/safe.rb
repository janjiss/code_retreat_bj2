module Strategy
  class Safe < Base
    def take_card?(hand)
      summ = hand.inject {|sum, x| sum+x}
      summ <= 12
    end
  end
end