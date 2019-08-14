class Airport

    attr_reader :plane
    def initialize
      @planes = []
    end
  
    def land(plane)
      @planes << plane
    end
  
    def take_off(plane)
        raise 'its stormy, cannot take off plane' if stormy?
      @planes.pop
    end

    def stormy?
        true
    end
  end