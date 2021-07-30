require "./lib/Bike"

class DockingStation

  attr_accessor :station, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = 20)
    @station = []
    @capacity = capacity
  end

  def release_bike
    # raise 'No bikes available to release' if  dock_empty?
    length = @station.count
    if (@station[length-1]).working? == true
      @station.pop
    else (@station[length-1]).broken? == true
      # @station.pop
      raise 'Bike is broken'
    end
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
