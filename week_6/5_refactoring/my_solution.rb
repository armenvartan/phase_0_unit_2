# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

class CreditCard
    def initialize(number)
        @number = number.to_s
        raise ArgumentError.new("The Credit Card Number has to be 16 digits!!!") unless @number.length == 16
    end
  def check_card
    num_array = @number.split("")
    num_array.each_with_index do |obj, i|
        num_array[i] = (obj.to_i * 2) if i.even?
     end
      return true if num_array.join("").split("").map { |i| i.to_i }.reduce(:+) % 10 == 0
      return false
  end
end


# Refactored Solution

class CreditCard
    def initialize(number)
        @number = number.to_s
        raise ArgumentError.new("The Credit Card Number has to be 16 digits!!!") unless @number.length == 16
    end
  def check_card
    num_array = @number.split("")
    num_array.each_with_index{ |obj, i| num_array[i] = (obj.to_i * 2) if i.even? } # made it into a 1 line statement
    num_array.join.split("").map { |i| i.to_i }.reduce(:+) % 10 == 0 # booleans return an implicit true : false
  end
end




# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

assert { CreditCard.new(4563960122001999).check_card == true }
assert { CreditCard.new(1111111111111111).check_card == false }



# Reflection

# Hi JuelyFish, your stuff looks really good. The only stuff I played with was changing
# your each_with_index method to a 1 line statement (I didn't know about that enumerable,
# it's a really cool one and nice use), and cutting down on your if true and false statements.
# Doing this has been a wake-up call to look at more poeple's code. I learned a lot
# from your stuff, and added a lot of it to my solution.
