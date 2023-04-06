# class Node
# stores data, children array, parent
# Node#list_parents returns an array of parent nodes of current node
class Node
  attr_accessor :data, :children, :parent

  def initialize(data, children = [], parent = nil)
    @data = data
    @children = children
    @parent = parent
  end

  def list_parents
    my_node = self
    parent_list = []
    loop do
      my_node = my_node.parent
      break if my_node.nil?
      parent_list << my_node.data
    end
    parent_list
  end
end
