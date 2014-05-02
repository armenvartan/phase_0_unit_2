# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:
# I'm not really sure what I'm going to do. I'm going to play around in the class
# and see what happens

# 3. Initial Solution

class GuessingGame

  def initialize(answer)
    unless answer.is_a? Integer
      raise ArgumentError.new("Must be an integer")
    end

    @answer = answer
    @guess = 0
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      :high
    elsif guess < @answer
      :low
    elsif guess = @answer
      :correct
    else
      raise ArgumentError.new("Must be an integer")
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end






# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(5)
p game.solved? == false
p game.guess(4) == :low
p game.solved? == false
p game.guess(6) == :high
p game.solved? == false
p game.guess(5) == :correct
p game.solved? == true





# 5. Reflection

# This one went really quickly as well. Not much new here, besides putting in an
# ArgumentError.
