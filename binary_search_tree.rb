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

def breadth_first_search(tree, value)
  queue = []
  visited = [tree]
  loop do
    return tree if tree.value == value
    if tree.left_node && !visited.include?(tree.left_node)
      queue.unshift(tree.left_node)
      visited << tree.left_node
    elsif tree.right_node && !visited.include?(tree.right_node)
      queue.unshift(tree.right_nod)
      visited << tree.right_node
    elsif !queue.empty?
      tree = queue.pop
    else
      nil
    end
  end
end

def depth_first_search(tree, value)
  stack = [] << tree
  visited = [] << tree
  until stack.empty?
    return tree if tree.value == value
    if tree.left_node && !visited.include?(tree.left_node)
      stack << tree.left_node
      visited << tree.left_node
      tree = tree.left_node
    elsif tree.right_node && !visited.include?(tree.right_node)
      stack << tree.right_node
      visited << tree.left_node
      tree = tree.right_node
    else
      tree = stack.pop
    end
  end
end

def dfs_rec(tree.left_node, value)
  return nil if tree.nil?
  return tree if tree.value == value

  left_node = dfs_rec(tree.left_node, value)
  return left_node if left_node && left_node.value == value

  right_node = dfs_rec(tree.right_node, value)
  return right_nodeif right_node && right_node.value == value
end

tree = build_tree([1,6,5,14,8,9,5,3,9,22])
bfs = breadth_first_search(tree, 8)
dfs = depth_first_search(tree, 14)
dfsrec = dfs_rec(tree, 5)
puts "Searches complete: breadth_first_search -> #{bfs.value}, depth_first_search -> #{dfs.value}, depth_first_search_recursive -> #{dfsrec.value}"
