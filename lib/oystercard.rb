class Oystercard
  MAX_BALANCE = 90

    def initialize 
      @balance = 0
      @in_journey = false
    end

    def top_up(amount)
      raise "unable to top-up: max limit is £#{MAX_BALANCE}" if (@balance + amount) > MAX_BALANCE
      @balance += (amount)
    end

    def deduct(fare)
      @balance -= fare
    end

    def in_journey?
    return @in_journey  
    end

    def touch_in
    @in_journey = true
    end

    def touch_out
    @in_journey = false
    end


attr_reader :balance
end
