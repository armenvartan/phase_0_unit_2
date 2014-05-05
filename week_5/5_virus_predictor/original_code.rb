# U2.W5: Virus Predictor

# I worked on this challenge [with: Ben Brostoff].

# EXPLANATION OF require_relative
# It get's information from another Ruby file
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  #HINT: What is the SCOPE of instance variables? ==> within the whole class
    predicted_deaths # instance variables can be accessing anywhere in the class, unlike local variables.
    speed_of_spread # so there is no point to call instance variables to other methods in the class
  end

  private  # private makes things below it unable to be called outside the class
# if you don't want people to use methods outside of the class, you call it private. It would not make sense to do this with virus_effects, since we use it
  def predicted_deaths
    pop_multiplier = (@population_density / 50).floor # thanks Ben
    pop_factor = 0.1

    number_of_deaths = (@population * 0.4).floor if @population_density >= 200

    number_of_deaths = (@population * 0.05).floor if @population_density < 50

    else number_of_deaths = (@population * (pop_multiplier * pop_factor)).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    speed = 0.5 # for all cases >= 200

    speed = 2.5 - ((@population_density / 50).floor * 0.5) if @population_density < 200


    print " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE

STATE_DATA.each_key do |state|
  current_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread])
  current_state.virus_effects
end
