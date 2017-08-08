# Virus Predictor
# I worked on this challenge [by myself, with: Austin Ratcliff].
# We spent [1.5] hours on this challenge.
# EXPLANATION OF require_relative
# Require relative connects to another file without requiring a complete path statement. It's a more specific subset of require.
#
require_relative 'state_data'
class VirusPredictor
# The method that runs when a new instance is created.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls both private methods (predicted_deaths and speed_of_spread)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# Takes three parameters which are set to the three variables established at initialization. A conditional statement based on the population_density variable. Creates new number_of_deaths variable. Outputs number of deaths string.
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    case @population_density
      when 200..2000 then death_rate = 0.4
      when 150..199 then death_rate = 0.3
      when 100..149 then death_rate = 0.2
      when 50..99 then death_rate = 0.1
      else death_rate = 0.05
    end
    number_of_deaths = (@population * death_rate).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
# Takes two parameters. New speed variable set to 0. Another conditional statement based on the population_density variable. As the population_density variable decreases, the speed variable increases. Outputs speed string.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    case @population_density
      when 200..2000 then speed_rate = 0.5
      when 150..199 then speed_rate = 1
      when 100..149 then speed_rate = 1.5
      when 50..99 then speed_rate = 2.0
      else speed_rate = 2.5
    end
    speed += speed_rate
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end
STATE_DATA.each do | state, state_info |
  report = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  report.virus_effects
end
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# They used different symbols. The first hash holds keys that are also hashes that have keys/values that contain values(data).

# What does require_relative do? How is it different from require?
# It's a method that accesses a file using a pathway from the file that is calling the require_relative instead of a full (complete?) pathway that require needs. 

# What are some ways to iterate through a hash?
# We used .each do, but you can also use .map

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I was wondering why we needed to use them as parameters rather than using them within the methods (opposed to using them when calling said method)

# What concept did you most solidify in this challenge?
# How to iterate within a hash within a hash. I still struggle with just iterating through a hash only has keys and values that aren't hashes so doing that was a really great exercise.
