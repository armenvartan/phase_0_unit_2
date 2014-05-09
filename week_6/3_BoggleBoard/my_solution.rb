# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode

# 1. Put my methods inside a class.
# 2. add #join to turn them from an array to a string
# 3. Profit

# 3. Initial Solution
class BoggleBoard

def initialize(board)
  @board = board
end

def create_word(*coords)
  coords.map { |coord| @board[coord.first][coord.last]}.join
end

def get_row(row)
  @board[row].join
end

 def get_col(column)
  @board.transpose[column].join # #transpose switches rows and columns
  end
end


dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
p boggle_board.create_word([3,2])
p boggle_board.create_word([1,2],[1,1],[2,1],[3,2])

for n in 0...4
  p boggle_board.get_row(n)
end

for n in 0...4
  p boggle_board.get_col(n)
end

# "brae"
# "iodt"
# "eclr"
# "take"
# "biet"
# "roca"
# "adlk"
# "etre"

# 5. Reflection

# This one was pretty easy (unless I missed something). I don't know if it helped my
# understanding of classes, but it was a nice start to the week.
