require_relative 'knight'
require_relative 'node'

# Tests
knight = Knight.new

knight.knight_moves([0, 0], [2, 7])
knight.knight_moves([7, 0], [5, 6])
knight.knight_moves([2, 2], [4, 4])
knight.knight_moves([4, 6], [7, 3])
knight.knight_moves([3, 3], [6, 6])
knight.knight_moves([1, 1], [5, 2])
knight.knight_moves([6, 5], [2, 0])
knight.knight_moves([5, 7], [1, 1])
knight.knight_moves([0, 2], [5, 7])
knight.knight_moves([7, 5], [0, 1])
knight.knight_moves([3, 6], [1, 3])
knight.knight_moves([2, 5], [6, 2])
knight.knight_moves([4, 4], [7, 6])
knight.knight_moves([6, 3], [3, 0])
knight.knight_moves([0, 6], [4, 1])
knight.knight_moves([1, 7], [6, 2])
