class Oystercard

  MAX_BALANCE = 90
  MIN_BALANCE = 1

  attr_reader :balance
  attr_reader :entry_station
  attr_reader :journeys
  attr_reader :journey

  def initialize(balance = 0)
    @balance = balance
    reset
    @journeys = []
  end


  def top_up(amount)
    fail 'Max balance of #{max_balance} exceeded' if amount + balance > MAX_BALANCE
    @balance += amount
  end


  def in_journey?
    @entry_station != nil
  end


  def touch_in(station = double)
    raise 'Card already touched in' if in_journey?
    raise 'Not enough balance' if @balance < MIN_BALANCE
    @entry_station = station
    @journey = Journey.new(station)
  end


  def touch_out(exit = double)
    @exit_station = exit
    @current_journey = Hash[:entry, @entry_station, :exit, @exit_station]
    @journeys << @current_journey
    reset
    deduct(@journey.finish(exit))
  end

private

  def deduct(amount = MIN_BALANCE)
    @balance -= amount
    amount
  end

  def reset
    @entry_station = nil
    @exit_station = nil
  end

end
