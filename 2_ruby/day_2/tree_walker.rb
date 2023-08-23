class Tree
    attr_accessor :children, :node_name
    
    def initialize(tree_spec)
        @children = []
        tree_spec.each do |name, children|
            @node_name = name
            children.each { | name, children | @children.push(Tree.new( { name => children } )) }
        end
    end
    
    def visit_all(&block)
        visit &block
        children.each {|child| child.visit_all &block }
    end
    
    def visit(&block)
        block.call self
    end
end


tree_spec = {
  'grandpa' => {
    'dad' => {
      'child 1' => {},
      'child 2' => {}
    },
    'uncle' => {
      'child 3' => {},
      'child 4' => {}
    }
  }    
}

ruby_tree = Tree.new(tree_spec)

puts "Visiting a node"

ruby_tree.visit {|node| puts node.node_name}

puts "Visiting all the nodes"
ruby_tree.visit_all {|node| puts node.node_name}
