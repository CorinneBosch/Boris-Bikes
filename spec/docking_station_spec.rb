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
    expect(@docking_station.dock_empty?).to eq true
    @docking_station.dock(@bike)
    expect(@docking_station.dock_empty?).to eq false
  end

  it 'raise error when docking_station is empty' do
    # @bike = []
    @docking_station.bikes = []
    expect {@docking_station.release_bike}.to raise_error 'No bikes available to release'
  end

  it 'raise error when docking_station is full' do
  
    @docking_station.bikes = [Bike.new, Bike.new]
    # @docking_station.dock Bike.new
    # expect {@docking_station.dock_full?}.to raise_error 'Docking station reached full capacety'
    # expect(@docking_station.dock_full?).to eq false 
    expect {@docking_station.dock(@bike)}.to raise_error 'Docking station reached full capacety'
  end

  # docking station maintainer
  # distributing bikes
  # not accept bikes when full

end


# given
# when
# then
