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

def mode(array)
  count = Hash.new(0)
  array.each {|x| count[x] += 1 }
  sortedHash = count.sort_by{|k,v| v}
  big = count.sort_by{|k,v| v}.last[1]
  array1 = sortedHash.map{ |k,v| v==big ? k : nil }.compact.sort
  return array1
end


# 3. Refactored Solution

def mode(array)
  count = Hash.new(0) # Creating a hash to sort the array
  array.each {|x| count[x] += 1 } # Hash{array: frequency}
  sortedHash = count.sort_by{|k,v| v} # Sorting the hash by the frequency
  modeValue = sortedHash.last[1] # modeValue = the frequency of the mode
  yourMode = sortedHash.collect{ |k,v| v==modeValue ? k : nil }.compact.sort
  # Comparing other numbers to see if they match the mode
end


# 4. Reflection

# Our idea was to put the array into a hash, with the array values as the
# key and their frequency as the value (as in array => Hash{array: frequency}). We
# then sort it and take the value corresponding to the largest frequency of occurances
# (in this case we made it the last value). We then compared all of the other values
# the last value on the sorted hash (because we know that's as large as it gets), and
# if it was the same, added the key associated to that value to an array containing
# all keys with that value.

# I'm definitely rusty on Ruby now. This was my first Ruby in 3 weeks now, and I have to
# brush the dust off. We found everything we needed in stack overflow and definitions in
# the ruby library.

Using .collect, creating a boolean where the false add nil, and then compacting the
created array is a really cool way to iterate over an array or hash and take what you want.

# I'm feeling pretty good about the competencies. We found a very simple way to do it
# using hash and sorting

# I enjoyed wrapping my mind around the hash and figuring out how we were going to take
# what we wanted from it.

# Syntax was definitely the troublesome part. That just has to do with practice. There are
# some many things to learn right now. I need to make sure to take some of my extra time to
# do more Ruby practice problems to memorize my syntax a little harder. We could have solved
# this must faster if I had experience with the .collect and .compact methods.
