# knight
# Treat all possible moves the knight could make as children in a tree

class Knight
  attr_accessor :current_coordinate

  def initialize(current_coordinate = [2, 1])
    @current_coordinate = current_coordinate
  end

  def possible_moves(coordinates = current_coordinate)
    knight_moves = [[1, 2], [-1, 2], [2, 1], [-2, 1], [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
    knight_moves.map { |dx, dy| [coordinates[0] + dx, coordinates[1] + dy] }
                .select { |x, y| x.between?(0, 7) && y.between?(0, 7) }
  end
end

knight = Knight.new
p knight.possible_moves

# Don't think about graphs right now - just abstract away the core of the problem, which is finding possible 
# moves from a given position.  I'd recommend that you pick a position on the board and then pick a target 
# position (one that's easy to get to). From there, draw out the possible moves from each position until you
# get there yourself on paper.  You can connect each possible move with a line or edge (hint).
