class Linked_list_node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
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



class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
        @data =  Linked_list_node.new(value, @data)
    end

    def pop
        return print "nil\n" if @data.nil?
        top_plate = Linked_list_node.new(@data.value, @data.next_node)
        @data = top_plate.next_node
        return top_plate
    end
end

def reverse_list(list)

    stack = Stack.new
  	while list
		next_node = list.next_node
        stack.push(list.value)
        list = next_node
	  end

    return stack.data
end

node1 = Linked_list_node.new(37)
node2 = Linked_list_node.new(99, node1)
node3 = Linked_list_node.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
