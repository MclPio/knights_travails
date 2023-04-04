# game_board
# knight
# knight_moves

class Board
  attr_accessor :adj_list

  def initialize()
    @adj_list = [[], [], [], [], [], [], [], []]
  end
end

class Knight
  attr_accessor :current_coordinate

  def initialize(current_coordinate)
    @current_coordinate = current_coordinate
  end

  def possible_moves
    [[1, 2], [-1, 2], [2, 1], [-2, 1],
     [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
  end
end

board = Board.new
knight = Knight.new([2, 1])
board.adj_list[2] << 1 # placing the knight
board.adj_list[2].pop(1) # step one of movement which is to delete old coordinates
board.adj_list[3] << 3 # step two of movement which is to place knight on new coordinates
p board.adj_list