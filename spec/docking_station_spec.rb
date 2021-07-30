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
  
  it 'it takes custom capacity given or takes default value of 20' do
    expect(@docking_station.capacity).to eq 20
    station2 = DockingStation.new(35)
    expect(station2.capacity).to eq 35
  end

it 'checks if Bike is broken, does not release when broken & raise error' do 

  expect(@bike.working?).to eq true

  bike1 = Bike.new('broken')
  expect(bike1.broken?).to eq 'broken'
  expect {@docking_station.}.to raise_error 'Bike is broken'
end
  # given
  # when
  # then


end


# given
# when
# then
