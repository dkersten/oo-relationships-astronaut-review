class Astronaut
  attr_reader :name, :age, :specialty
#   attr_accessor 

  @@all = []

  def initialize(name, age, specialty)
    @name = name
    @age = age
    @specialty = specialty

    Astronaut.all << self
  end

  def missions
    Mission.all.select do |mission|
        mission.astronaut == self
    end
  end

  def shuttles
    # returns an Array of this astronaut's shuttles
    missions.map do |shuttle|
        mission.shuttle
    end
  end

  def join_shuttle(launch_date, shuttle)
    if shuttle.capacity > shuttle.missions.length
        Mission.new(launch_date, self, shuttle)
    else
        puts "Sorry, this mission is already full!"
    end
  end

  def self.all
    @@all
  end

  def self.most_missions
    # returns an instance of an astronaut who has been to Mars the most times
    self.all.max_by do |astronaut|
        astronaut.missions.length
    end
  end
end
