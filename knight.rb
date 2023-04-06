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
        puts "You made it in #{count} moves! Here's your path:"
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
