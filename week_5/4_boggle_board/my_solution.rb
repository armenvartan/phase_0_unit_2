# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [with: Ben Brostoff].


boggle_board =  [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


$boggle = boggle_board

# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution
def create_word(board, *coords)
  coords.map { |coord| board[coord.first][coord.last]}.join("")
end
# print create_word(boggle_board, [0,0], [1,1], [2,2], [3,3])

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code" #=> returns "code"
p create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"

# Reflection

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.

# Pseudocode

# Initial Solution

def get_row(row)
  $boggle[row]
end

# print get_row(1) #=>  ["i", "o", "d", "t"]

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p get_row(0) == ["b","r","a","e"]
p get_row(4) == nil

# Reflection



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution

def get_column(column)
  i = 0
  boggle = [] #the array that we're going to push the values into
  while i < $boggle.length #for each element in the first array
    boggle << $boggle[i][column] # pushes the column values into the boggle array
    i += 1 # you don't want infinite loops
  end
  boggle # without .compact it will return the nil values in the array. not sure if that is what one would want in an uneven array
end

# Refactored Solution

def get_column(column)
  boggle = []
  for i in 0...$boggle.length # using a for loop, rather than while. it's a little cleaner and easier to follow
    boggle << $boggle[i][column]
  end
  boggle.compact #easier to test with .compact, because it will give you an empty array if the column is empty, rather than [nil, ..., nil]
end

# Another fun solution

def get_column(column)
  $boggle.transpose[column] # #transpose switches rows and columns
end

# DRIVER TESTS GO BELOW THIS LINE
p get_column(1) == ["r","o","c","a"]
p get_column(4) == nil

# Reflection

# This one was super annoying at first. After realizing it was that simple (just 
# add a '$'!) it started moving. Wrapping my mind around doing the columns took a
# minute. I found the #transpose enumerable a few days later, which is waaay easier,
# but I'm happy that I got to figure out a more difficult way to do it first.
