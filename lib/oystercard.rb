class Oystercard
  MAX_BALANCE = 90

    def initialize 
      @balance = 0
    end

    def top_up(amount)
      raise "unable to top-up: max limit is £#{MAX_BALANCE}" if (@balance + amount) > MAX_BALANCE
      @balance += (amount)
    end

    def deduct(fare)
      @balance -= fare
    end
attr_reader :balance
end
