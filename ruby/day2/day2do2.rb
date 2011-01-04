class Tree
  attr_accessor :children, :node_name
  
  def initialize(name, subtrees)
    @node_name = name
    @children = subtrees.map {|subname, subsubtrees| Tree.new(subname, subsubtrees)}
  end
  
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  
  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new("Ruby", {"Reia" => {"Reia-1" => {}, "Reia-2" => {}}, "MacRuby" => {}})

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
