require './lib/journey.rb'
require './lib/oystercard.rb'
require './lib/station.rb'
require './lib/journey_log.rb'

describe JourneyLog do
  it { is_expected.to respond_to(:start).with(1).argument }

  it { is_expected.to respond_to(:finish).with(1).argument }


it 'saves journey history' do
  station = Station.new
  station2 = Station.new
  log = JourneyLog.new
  log.start(station)
  log.finish(station2)
  expect(log.journeys).to eq [{ entry: station, exit: station2 }]

end

end
