# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? an array of numbers <= 100
# What is the output? (i.e. What should the code return?) the grade corresponding to the mean of these numbers
# What are the steps needed to solve the problem?
# 1. get the mean
# 2. put that number in the corresponding grade. I'm going to use cases to do this

# 2. Initial Solution

def get_grade(grades)
  sum = 0
  grades.each {|grade| sum += grade}
  mean = sum / grades.length
  case
  when mean >= 90
    return "A"
  when mean >= 80
    return "B"
  when mean >= 70
    return "C"
  when mean >= 60
    return "D"
  else
    return "F"
  end
end


# 3. Refactored Solution
# I'm happy with my solution. Here is the comments to explain what I did.

def get_grade(grades)
  sum = 0 # define sum, so that I can add things to it
  grades.each {|grade| sum += grade} # adding each element of the array together
  mean = sum / grades.length # the average of the grades
  case # the letter grade for each mean
  when mean >= 90
    return "A" # good job, student
  when mean >= 80
    return "B" # pretty good job, student
  when mean >= 70
    return "C" # average job, student
  when mean >= 60
    return "D" # I've seen better, student
  else
    return "F" # Reconsider your life, student
  end # Don't forget your end statements
end # I always add my end statements before filling in the stuff inbetween.
# I think it leads to less silly syntax errors


# 4. Reflection

# SYNTAX, man. I originally set sum = nil. Nothing worked, and I was getting pissed. Changed
# it to 0, and the the rest of the coding went according to plan. I need to get my mind around when
# to use 0 and nil a little better. In the median challenge, nil solves the bonus. In this one
# nil gives you an error. It probably has to do with the kind of math you are doing. I feel good
# about this assignment. I could use other methods to solve it, but I think case looks really nice
# in this situation. I'm pretty sure there is something similar to this in Chris Pines' book. It
# was frustrating troubleshooting the nil/0 thing, but that's the fun of learning code.
