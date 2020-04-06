class Mission
    attr_reader :launch_date
    attr_accessor :astronaut, :shuttle

    @@all = []

    def initialize(launch_date, astronaut, shuttle)
        @launch_date =  launch_date
        @astronaut = astronaut
        @shuttle = shuttle

        Mission.all << self
    end

    def self.all
        @@all
    end

    def self.astronauts
        Astronaut.all
    end

    def self.shuttles
        Shuttle.all
    end

end
