class DockingStation

  attr_accessor :bikes

  def initialize
    @bikes = [] 
  end

  def release_bike
    # (@bikes.empty?) ? (raise 'No bikes available to release') : (@bikes)
    (dock_empty?) ? (raise 'No bikes available to release') : (@bikes)
  end

  def dock(velo) # takes an instance of a Bike object
    # (@bikes.count == 1) ? (raise 'Docking station reached full capacety') : (@bikes << velo)
    (dock_full?) ? (raise 'Docking station reached full capacety') : (@bikes << velo)

    # if dock_full?
    #   raise 'Docking station reached full capacety'
    # else @bikes << velo
    # end

    # @bikes << velo
  end 

  def dock_empty?
    @bikes.empty?
  end

  def dock_full?
    @bikes.count > 1
    # @bikes.max(1)
  end

end
