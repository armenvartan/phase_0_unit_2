# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(card_number)
    raise ArgumentError.new("Must be an Integer") unless card_number.is_a? Integer # Checking that it's an integer
    raise ArgumentError.new("Must be 16 digits") unless card_number.to_s.length == 16 # Checking that it's 16 digits
    @card_number = card_number
  end
  def check_card
    cc_num = @card_number.to_s.split(//).map{ |num| num.to_i } # turning the CC number into an array, so we can play with it
    sum = 0 # to add the numbers together for the Luhn algorithm
    i = 0 # for the while loop to add the proper elements in the array
    while i < 16 do
      cc_num[i] += cc_num[i]
      i += 2
    end
    luhn = cc_num.to_s.split(//).map{ |num| num.to_i }
    luhn.each{ |x| sum += x }
    sum % 10 == 0 ? true : false
  end
end



# 4. Refactored Solution

class CreditCard
  def initialize(card_number)
    raise ArgumentError.new("Must be an Integer") unless card_number.is_a? Integer # Checking that it's an integer
    raise ArgumentError.new("Must be 16 digits") unless card_number.to_s.length == 16 # Checking that it's 16 digits
    @card_number = card_number
  end
  def check_card
    cc_num = @card_number.to_s.split(//).map{ |num| num.to_i } # turning the CC number into an array, so we can play with it
    i = 0 # for the while loop to add the proper elements in the array
    while i < @card_number.to_s.length do # for elements 0,2,...,14 in the array
      cc_num[i] += cc_num[i] # you could do cc_num * 2 here... same thing
      i += 2
    end
    luhn = cc_num.join.split(//).map{ |num| num.to_i } # Turning it back into a string first, so that we can split the multi-digit numbers
    sum = luhn.reduce(:+) # Adds all the elements of an array together
    sum % 10 == 0 ? true : false
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
card1 = CreditCard.new(1234567890123456)
card2 = CreditCard.new(4408041234567893)
print card1.check_card == false
print card2.check_card == true



# 5. Reflection

# This one went really smoothly for me. I found an easy way to do the int to string to
# array on stack overflow, which saved me some time. I decided on a while loop for
# the even cc numbers--there is probably a way to do that in 1 or 2 less lines, but
# logic is clear and concise this way, as well. the difference between line 32 and
# 55 are that you get a lot of '0's on line 32, if you check it with a print statement
# there. #join turns it to a string so that all the ','s and ' 's aren't turned into
# integers. This makes the check_card method much easier to modify.
