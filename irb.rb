require './lib/journey.rb'
require './lib/journey_log.rb'
require './lib/oystercard.rb'
require './lib/station.rb'

station = Station.new("Victoria", 2)
station2 = Station.new("Aldgate", 3)
journey_class = Journey.new(station) #our class is Journey
journey_log = JourneyLog.new(journey_class)
journey_log.start(station)
journey_log.finish(station2)
journey_log.journeys
