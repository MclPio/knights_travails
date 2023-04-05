# knight
# Treat all possible moves the knight could make as children in a tree

class Node
  attr_accessor :data, :children, :parent

  def initialize(data, children = [], parent = nil)
    @data = data
    @children = children
    @parent = parent
  end

  def get_parents
    my_node = self
    parent_list = []
    while true
      my_node = my_node.parent
      break if my_node.nil?
      parent_list << my_node.data
    end
    parent_list
  end
end

class Knight
  attr_accessor :current_coordinate

  def initialize(current_coordinate = [2, 1])
    @current_coordinate = current_coordinate
  end

  def possible_moves(coordinates = current_coordinate)
    knight_moves = [[1, 2], [-1, 2], [2, 1], [-2, 1], [-1, -2], [-2, -1], [2, -1], [1, -2]]
    knight_moves.map { |dx, dy| [coordinates[0] + dx, coordinates[1] + dy] }
                .select { |x, y| x.between?(0, 7) && y.between?(0, 7) }
  end

  def construct_tree(data, parent = nil)
    node = Node.new(data)
    node.children = possible_moves(node.data)
    node.parent = parent
    node
  end

  def knight_moves(root, destination)
    queue = [construct_tree(root)]
    visited = []

    while !queue.empty?
      node = queue.shift
      parent = node
      if node.data == destination
        move_list = node.get_parents.unshift(node.data).reverse
        count = move_list.count - 1
        p "You made it in #{count} moves! Here's your path:"
        move_list.each { |item| p item}
        return move_list
      end
      visited << node
      node.children.each do |child|
        queue << construct_tree(child, parent) unless visited.include?(construct_tree(child,parent))
      end
    end
  end
end

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
