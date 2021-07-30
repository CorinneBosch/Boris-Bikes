require 'docking_station.rb'

describe DockingStation do

  before(:each) do
    @docking_station = DockingStation.new
    @bike = Bike.new # Why are you calling this single Bike object @bikes with an s?
  end

  it 'respond to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it "get a bike & check if it is working?" do
    expect(@bike.working?).to eq true
  end

  it 'responds to dock' do
    expect(@docking_station).to respond_to(:dock)
  end

  it 'test function dock, is working & bikes are docked' do
    expect(@docking_station.station.empty?).to eq true
    @docking_station.dock(@bike)
    expect(@docking_station.station.empty?).to eq false
  end

  it 'raise error when docking_station is empty' do
    @docking_station.station = []
    expect {@docking_station.release_bike}.to raise_error 'No bikes available to release'
  end

  it 'raise error when docking_station is full' do
    20.times { @docking_station.dock Bike.new }
    expect {@docking_station.dock(@bike)}.to raise_error 'Docking station reached full capacety'
  end

  # given
  # when
  # then


end


# given
# when
# then
