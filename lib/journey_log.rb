class JourneyLog

  def intialize(journey_class: )
    @journeys = []
    @journey_class = journey_class
  end

  def start(station)
    @start = station
    @in_journey = true
    journey_history
      p "current journey looks like- #{current_journey}"
  end

  def finish(station2)
    @finsih = station2
      p "station2 is saved as #{@finsih}"
    journey_history
      p "journey history looks like- #{journey_history}"
    @in_journey = false
      p "in_journey is now- #{@in_journey}"
    # @finish = nil
  end

  def journey_history
    journey = {start: @start, finish: @finish}
    @journeys << journey unless @in_journey
    @journeys.dup
  end

private
  def current_journey
    @in_journey ||= journey_class.new
  end
end


# log = JourneyLog.new
# aldgate = Station.new("Aldgate", 2)
# log.start(aldgate)
