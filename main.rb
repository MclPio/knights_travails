# game_board
# knight
# knight_moves

class Board
  attr_accessor :adj_mtrx

  def initialize()
    @adj_mtrx =
    [
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0]
    ]
  end

  def to_s
    "    #{adj_mtrx[0]}
    #{adj_mtrx[1]}
    #{adj_mtrx[2]}
    #{adj_mtrx[3]}
    #{adj_mtrx[4]}
    #{adj_mtrx[5]}
    #{adj_mtrx[6]}
    #{adj_mtrx[7]}"
  end

  def update(coor_array)
    y = coor_array[1]
    x = coor_array[0]
    adj_mtrx[y][x] = 1
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
board.update(knight.current_coordinate)
puts board
