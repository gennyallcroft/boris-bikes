class Van
  attr_reader :broken_bikes , :fixed_bikes

  def initialize
    @broken_bikes = []
    @fixed_bikes = []
  end
  def collect_bikes(station)
    broken_bikes << station.get_broken_bikes
    return broken_bikes.length
  end
  def distribute_bikes(garage)
    fixed_bikes << garage.get_fixed_bikes
    return fixed_bikes.length
  end
end
