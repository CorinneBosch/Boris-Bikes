class Bike
  attr_accessor :state

  def initialize(state = 'functioning')
    @state = state
  end

  def working?
    @state == 'functioning' 
  end

  def broken?
    @state = state
  end
end

# Bike.new('works')

# Bike.new('broken')