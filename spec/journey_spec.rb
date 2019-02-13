require "journey"
require "station"
require "oystercard"

describe Journey do

  it "has a station set on creation" do
    station_double = double(:name => "Vic", :zone => 1)
    journey = Journey.new(station_double)
    expect(journey.station).to eq station_double
  end

  it "charges the minimum balance" do
    station_double = double(:name => "Vic", :zone => 1)
    journey = Journey.new(station_double)
    journey.finish(station_double)
    expect(journey.fare).to eq 1
  end

  it "charges the penalty fare" do
    station_double = double(:name => "Vic", :zone => 1)
    journey = Journey.new(station_double)
    expect(journey.fare).to eq 6
  end

  it "knows if a journey is ongoing" do
    station_double = double(:name => "Vic", :zone => 1)
    journey = Journey.new(station_double)
    expect(journey.complete?).to be true
  end

  it "starts a journey" do
    station_double = double(:name => "Vic", :zone => 1)
    journey = Journey.new(station_double)
    expect(journey.station).to eq station_double
  end

  it "finishes a journey" do
    station_double = double(:name => "Vic", :zone => 1)
    journey = Journey.new(station_double)
    journey.finish(station_double)
    expect(journey.exit).to eq station_double
  end

end