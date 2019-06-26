require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity
    def initialize(capacity=-1)
      @bikes = []
      @capacity = capacity != -1 ? capacity : DEFAULT_CAPACITY
    end
    def release_bike
      raise "There are no bikes left" if empty?
      working_bikes = get_working_bikes
      raise "There are no working bikes" if working_bikes.empty?
      working_bikes.pop
    end
    def get_working_bikes
      @bikes.map {|bike| bike.working?}
    end
    def get_broken_bikes
      @bikes.map {|bike| !bike.working?}
    end
    private def empty?
      @bikes.empty?
    end
    private def full?
     @bikes.length >= DEFAULT_CAPACITY
    end
    def dock(bike,broken=false)
      bike.report_broken if broken
      raise "This docking station is full" if full?
      @bikes << bike
      bike
    end
end
