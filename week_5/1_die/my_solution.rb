# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Choose a number > 0")
    end
    @sides = sides
    roll
  end

  def sides
    @sides
  end

  def roll
    1 + rand(sides)
  end
end

# 4. Refactored Solution

class Die
  def initialize(sides)
      raise ArgumentError.new("Choose a number > 0") unless sides > 0
    @sides = sides
    roll
  end

  def sides
    @sides
  end

  def roll
    1 + rand(sides)
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(3)
p die.sides == 3
p die.roll == 1 || 2 || 3
Die.new()





# 5. Reflection

# This one went quickly. Thanks Chris Pines
