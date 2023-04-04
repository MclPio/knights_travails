# game_board
# knight
# knight_moves

class Board
  attr_accessor :adj_list

  def initialize
    @adj_list = [[], [], [], [], [], [], [], []]
  end

  def add_piece(coordinates)
    adj_list[coordinates[0]] << coordinates[1]
  end

  def remove_piece(coordinates)
    adj_list[coordinates[0]].pop(coordinates[1])
  end
end

class Knight
  attr_accessor :current_coordinate

  def initialize(current_coordinate = [2, 1])
    @current_coordinate = current_coordinate
  end

  def possible_moves
    new_list = []
    knight_moves = [[1, 2], [-1, 2], [2, 1], [-2, 1], [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
    knight_moves.each do |element|
      x = current_coordinate[0] + element[0]
      y = current_coordinate[1] + element[1]
      if x <= 7 && x >= 0
        if y <= 7 && y >= 0
          new_list << [x, y]
        end
      end
    end
    new_list
  end
end

board = Board.new
knight = Knight.new
# board.adj_list[2] << 1 # placing the knight
# board.adj_list[2].pop(1) # step one of movement which is to delete old coordinates
# board.adj_list[3] << 3 # step two of movement which is to place knight on new coordinates
board.add_piece(knight.current_coordinate)
p board.adj_list
p knight.possible_moves
