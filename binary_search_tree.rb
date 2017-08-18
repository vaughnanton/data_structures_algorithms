class Node
  attr_reader :value
  attr_accessor :left_node, :right_node

  def initialize(value = nil)
    @value = value
  end

  def insert(new_value)
    if new_value < value
      left_node.nil? ? self.left_node = Node.new(new_value) : left_node.insert(new_value)
    else
      right_node.nil? ? self.right_node = Node.new(new_value) : right_node.insert(new_value)
    end
  end
end

def build_tree
  root = Node.new(array.shift)
  array.each { |v| root.insert(v) }
  root
end

def breadth_first_search
end

def depth_first_search
end

def dfs_rec
end
