class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end
end


def bfs(starting_node, target_value, visited = [])
    return nil if visited.include?(starting_node.val)
    return starting_node if starting_node.val == target_value
    visited << starting_node.val
    starting_node.neighbors.each {|node| bfs(node, target_value, visited)}
    return nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
p bfs(a, 'b')