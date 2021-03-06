# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 1. Pseudocode

# What is the input? a ruby integer
# What is the output? (i.e. What should the code return?) a ruby number string with commas every 3 places
# What are the steps needed to solve the problem?
# There are a few ways to take this.
# I'm going to iterate over the array and if the array.length - i % 0 i'm going to add a comma

# 2. Initial Solution

def separate_comma(integer)
  number = integer.to_s
  number.split(//)
  commas = (number.length - 1) / 3
  for comma in 1..commas
    number.insert(-4*comma, ',')
  end
  return number
end

# 3. Refactored Solution
# I'm happy with my solution. I had to change course to say what I wanted to.
# My refactoring ended up happening as I worked.

def separate_comma(integer)
  number = integer.to_s
  number.split(//) # I turned it to a string so that I could split each digit into an element in an array
  commas = (number.length - 1) / 3 # the math for the number of commas I want. Add a print command and play with it, if you want more info
  for comma in 1..commas
# This adds a comma every 3 digits, starting from the right (thus the negative).
    number.insert(-4*comma, ',') # '-4' not -3, because the comma takes a place
  end
  return number #return the value you want
end # BAM

# 4. Reflection

# This one was interesting. There are a lot of ways to approach the number to add the 
# commas. It was fun reading through Ruby-docs and deciding which way to go. I decided
# to count from the right of the number, just so that I could do a little less math
# to solve the problem (since we know the number of digits from number.length, one could
# approach the number from the left as well and add the commas that way).
