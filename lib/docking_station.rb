class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    (@bikes.empty? ) ? (raise 'No bikes available to release' ) : (@bikes)
  end

  def dock(velo)
    @bikes << velo
  end 

  def dock_empty?
    @bikes.empty?
  end
end
