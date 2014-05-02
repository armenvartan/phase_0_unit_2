# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
    unless labels.length > 0
      raise ArgumentError.new("No sides were defined")
    end
    @labels = labels
    roll
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

# print die.roll

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(["a","b","c"])
p die.sides == 3
p die.roll == "a" || "b" || "c"
empty = Die.new()





# 5. Reflection

# I learned about #sample in this one. I like reading through Ruby docs. I learn
# a lot about Ruby every time. A lot of times I find things I wasn't looking for 
# that help later.
