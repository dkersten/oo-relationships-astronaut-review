require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#write your test code in here
astro1 = Astronaut.new("Michael", 46, "Excavation")
astro2 = Astronaut.new("Pam", 31, "Data Processing")
astro3 = Astronaut.new("Dwight", 38, "Agriculture")

mission1 = Mission.new("May 5", astro1, "CZ 1")
mission2 = Mission.new("May 6", astro2, "CZ 2")

shuttle1 = Shuttle.new("CZ 1", 1)
shuttle1 = Shuttle.new("CZ 2", 4)
shuttle3 = Shuttle.new("CZ 3", 3)



binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
