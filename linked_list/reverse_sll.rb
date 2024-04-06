class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end

class SingleLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while !current.next_node.nil?
        current = current.next_node
      end
      current.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  def print_list
    current = @head
    while current
      print "#{current.data} -> "
      current = current.next_node
    end
    puts "nil"
  end

  def reverse_linked_list
    current = @head
    prev = nil
    while current
      temp = current.next_node
      current.next_node = prev
      prev = current
      current = temp
    end
    @head = prev
  end
end

linked_list = SingleLinkedList.new
linked_list.append(1)
linked_list.append(2)
linked_list.append(3)
linked_list.prepend(0)
linked_list.print_list
linked_list.reverse_linked_list
linked_list.print_list