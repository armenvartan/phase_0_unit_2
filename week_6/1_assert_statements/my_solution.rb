# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The assert method is checking to see if name == "bettysue" on line 13, and "billybob"
# on line 14. It prints that there is a failed assertion on line 14.


# 3. Copy your selected challenge here

class CreditCard
  def initialize(card_number)
    raise ArgumentError.new("Must be an Integer") unless card_number.is_a? Integer # Checking that it's an integer
    raise ArgumentError.new("Must be 16 digits") unless card_number.to_s.length == 16 # Checking that it's 16 digits
    @card_number = card_number
  end
  def check_card
    cc_num = @card_number.to_s.split(//).map{ |num| num.to_i } # turning the CC number into an array, so we can play with it
    doubled_evens = []
    cc_num.each_index{ |i| i % 2 == 0 ? doubled_evens << cc_num[i] * 2 : doubled_evens << cc_num[i] } # doubled every even index in the array (including 0)
    luhn_number = doubled_evens.join.split(//).map{ |num| num.to_i } # Turning it back into a string first, so that we can split the multi-digit numbers
    sum = luhn_number.reduce(:+) # Adds all the elements of an array together
    sum % 10 == 0 ? true : false
  end
end


# 4. Convert your driver test code from that challenge into Assert Statements

card1 = CreditCard.new(1234567890123456)
card2 = CreditCard.new(4408041234567893)
assert { card1.check_card == false }
assert { card2.check_card == true }



# 5. Reflection

# Maybe I missed something, but this one was very simple. I don't have a
# problem with that. I'm sure it leads to good habits for future work.
