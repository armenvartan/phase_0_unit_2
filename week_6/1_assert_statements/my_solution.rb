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
    cc_num.each_with_index{ |obj, i| cc_num[i] = (obj * 2) if i.even? }
    cc_num.join.split(//).map{ |i| i.to_i }.reduce(:+) % 10 == 0
  end
end


# 4. Convert your driver test code from that challenge into Assert Statements

assert { CreditCard.new(1111111111111111).check_card == false }
assert { CreditCard.new(4408041234567893).check_card == true }



# 5. Reflection

# I made more refactors on my solution based on things I saw from JuelyFish.
# I had never seen #each_with_index before. It's a nice one. I need to look through
# that part of Ruby Docs some more.
