# U2.W4: Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? the arrays
# What is the output? (i.e. What should the code return?) the total and a string with spaces
# What are the steps needed to solve the problem?
# for the total method, i will take each element in the array and add it the the previous, then
# return the total.

# for the string, i'm going to multiply the string by a ' ', use .capitalize, and add a period.

# 2. Initial Solution

def total(array)
  sum = 0
  array.each{ |x| sum += x }
end

def sentence_maker(array)
  sentence = array * " " + "."
  sentence.capitalize
end

# 3. Refactored Solution
# I have nothing to refactor this time around. My gameplan worked pretty well.

def total(array)
  sum = 0
  array.each{ |x| sum += x }
end

def sentence_maker(array)
  sentence = array * " " + "." # multiplying the array by a " ", turning it into a string. add a period
  sentence.capitalize # capitalize that bad boy
end # call it a day


# 4. Reflection
# My strategy worked. I'm rusty on Ruby, so it took a bit of tinkering to get the computer to
# do what I'm thinking. I looked under array functions in Ruby docs to decide what route to go.
# I learned about multiplying arrays to create a string. I'm feeling good about the competencies.
# It felt good to get it to work. I'm dusting off my Ruby skills, and, unfortunately, tiny errors
# don't go over well in programming.
# It was tedious figuring out what was going wrong. I forgot to declare sum before iterating over
# the array and adding it to sum.
