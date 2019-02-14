require './lib/journey.rb'
require './lib/oystercard.rb'
require './lib/station.rb'
require './lib/journey_log.rb'

describe JourneyLog do
  it { is_expected.to respond_to(:start).with(1).argument }

  it { is_expected.to respond_to(:finish).with(1).argument }

end
