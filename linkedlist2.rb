class Linked_list_node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list, previous_node=nil)

    node = list.next_node
    list.next_node = previous_node

    if node
      reverse_list(node, list)

    else
       list
    end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end




node1 = Linked_list_node.new(37)
node2 = Linked_list_node.new(99, node1)
node3 = Linked_list_node.new(12, node2)
node4 = Linked_list_node.new(50, node3)


print_values(node4)
  puts "------------------------"
  node1.next_node = node4
