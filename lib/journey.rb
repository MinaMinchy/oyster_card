class Journey

  attr_reader :station, :exit

  def initialize(station)
    @station = station
    @fare = 0
  end

  def finish(exit)
    @exit = exit
    fare
  end

  def complete?
    return false if @station.nil?
    true
  end

  def fare
    return 6 if (@station.nil? or @exit.nil?)
    1
  end

end