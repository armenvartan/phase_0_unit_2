# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) the middle value of the sorted array
# What are the steps needed to solve the problem? sort the array, if it's odd, take the middle
# value. if it's even, take the middle two values and give a value between them.


# 2. Initial Solution
def median(array)
  middle = nil
  array.sort!
  if array.length % 2 == 0
    middle = (array[array.length / 2] + array[array.length / 2 - 1]) / 2.0
  else
    middle = array[(array.length - 1) / 2]
  end
end

# 3. Refactored Solution
# I'm feeling pretty good about my solution. I'm curious to see anyone's suggestions on
# refactoring. Here is the code with comments.

def median(array)
  middle = nil # defining the future median
  array.sort! # sorting the array. I used a destructive method for this, so that it goes to the if statement
  if array.length % 2 == 0 # if the array has an even amount, we need the average of the middle 2 elements
    middle = (array[array.length / 2] + array[array.length / 2 - 1]) / 2.0 # refer to the table below for a visual
  else
    middle = array[(array.length - 1) / 2] # if it's odd you just take the midle element
  end # don't forget to close your
end

# array[0 1 2 3]   so to get place 1 and 2, we need (4/2-1 + 4/2)/2
# lngth[1 2 3 4]   that gives us (array[1] + array[2])/2

# array[0 1 2 3 4 5]   same deal here. to get element 2 and 3 we take the length/2 -1 for the bottom middle
# lngth[1 2 3 4 5 6]   and length/2 for the top middle


# 4. Reflection

# My strategy worked. Ruby makes this kind of stuff really easy. I looked up th syntax to
# make sure I was using it correctly, and for any shortcuts that may appear. For example, the .sort
# command doesn't need anything else if you want it to go from low to high. As usual, Ruby docs
# has the answer (and so much more!). This was my first time doing something where I needed to use
# the !destructive version of a method. I put a print command in to see if why I didn't pass the sorting
# test, and it was because the sort didn't pass into the if statement. In a situation where I needed
# the original array, I could just move the sort command into the if statement and remove the '!'.
# I'm feeling pretty good about the learning competencies in this one. This was a lot easier to
# do in Ruby than in JS.
