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



# 4. Reflection
