class Bike
  attr_reader :broken
    def initialize(broken=false)
      @broken = broken
    end
    def working?
        !@broken
    end
    def fixed
      @broken = false
    end
    def report_broken
      @broken = true
    end
end
