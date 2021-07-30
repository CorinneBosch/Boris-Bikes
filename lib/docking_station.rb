class DockingStation

  attr_accessor :station

  DEFAULT_CAPACITY = 20

  def initialize
    @station = [] 
  end

  def release_bike
    (dock_empty?) ? (raise 'No bikes available to release') : (@station.pop())
  end

  def dock(velo) # takes an instance of a Bike object
    (dock_full?) ? (raise 'Docking station reached full capacety') : (@station << velo)
  end 

  private
  def dock_empty?
    @station.empty?
  end

  def dock_full?
    @station.count >= DEFAULT_CAPACITY
  end
end
