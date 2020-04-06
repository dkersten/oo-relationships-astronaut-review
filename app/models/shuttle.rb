class Shuttle
    attr_reader :model, :capacity

    @@all = []

    def initialize(model, capacity)
        @model = model
        @capacity = capacity

        Shuttle.all << self
    end

    def missions
        Mission.all.select do |mission|
            mission.shuttle == self
        end
    end

    def add_astronaut(launch_date, astronaut)
        if self.missions.length < self.capacity
            Mission.new(launch_date, astronaut, self)
        else
            puts "Sorry, this mission is already full!"
        end
    end

    def current_astronauts
        # returns an Array of all the astronauts on this shuttle
        missions.map do |mission|
            mission.astronaut
        end
    end

    def self.all
        @@all
    end

    def self.find_by_model(model_num)
        # takes a String argument of a model number and returns a Shuttle 
        # instance that matches that argument
        Shuttle.all.select do |shuttle|
            shuttle.model == model_num
        end
    end
end
