class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
    # (Bike.new.working?) ? (release) : (puts 'Bike not working')
  end

  def dock(velo)
    @bikes << velo
  end 

  def dock_empty?
    @bikes.empty?
  end

end
