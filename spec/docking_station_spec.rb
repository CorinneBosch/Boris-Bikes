require 'docking_station.rb'

describe DockingStation do

  before(:each) do
    @docking_station = DockingStation.new
    @bikes = Bike.new
  end

  it 'respond to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it "get a bike & check if it is working?" do
    expect(@bikes.working?).to eq true
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
    @bikes = []
    expect {@docking_station.release_bike}.to raise_error 'No bikes available to release'
  end

  # docking station
  # not charging bikes unnecessarily
  # not release bikes if no bikes -> raise error

end


# givn
# when
# then
