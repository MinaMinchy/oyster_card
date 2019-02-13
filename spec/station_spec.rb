require "./lib/station"

describe Station do

  station = Station.new("Victoria", 1)

  it "has a name on creation" do
    expect(station.name).to eq "Victoria"
  end

  it "has a zone on creation" do
    expect(station.zone).to eq 1
  end

end