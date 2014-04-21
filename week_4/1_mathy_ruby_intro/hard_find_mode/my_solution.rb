# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Ben Brostoff].

# 1. Pseudocode

# What is the input? The array
# What is the output? (i.e. What should the code return?) a hash with the array as keys, and the frequency as value
# What are the steps needed to solve the problem?

# define function with array as input
# create new hash
# feed array into hash as keys
# specify frequencies as values

# 2. Initial Solution
array = [20, 20, 30, 30, 40, 10]

def mode(array)
  count = Hash.new(0)
  array.each {|x| count[x] += 1 }
  big = count.sort_by{|k,v| v}.last[1]
  count.each{|k,v| k if v = big }

end

print mode(array)


# 3. Refactored Solution
# I think our code is very clean. No need to refactoring


# 4. Reflection
