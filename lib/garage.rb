class Garage

attr_accessor :broken_bikes , :fixed_bikes

  def initialize
    @broken_bikes = []
    @fixed_bikes = []
  end

  def accept_broken_bikes(broken_bikes)
    @broken_bikes << broken_bikes
    return broken_bikes.length
  end

  def fix_bike(bike)
    bike.fixed
    p bike
    @fixed_bikes << bike
    p @fixed_bikes
    @fixed_bikes
  end

  def get_fixed_bikes
    return @fixed_bikes
  end
end
