# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

class Array
  def pad!(l, output = nil)
    amount = l - self.length
    for num in 1..amount
      self.push(output)
    end
    return self
  end
end

class Array
  def pad(l, output = nil)
    paddedArray = self.dup
    amount = l - paddedArray.length
    for num in 1..amount
      paddedArray.push(output)
    end
    return paddedArray
  end
end


# 3. Refactored Solution
# We refactored as we went. I can't find anything after the fact to refactor.


# 4. Reflection

# This one was very challenging for me. I had never modified a class before. I was
# pissed off the whole time and couldn't stop thinking about what the solution could
# be. I really like feeling that way. I like the feeling of being outside of my
# comfort zone and trying to figure it out (I had a much less successful experience
# trying to figure out how to assemble my friend's tent late last night).
