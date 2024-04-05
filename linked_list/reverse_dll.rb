class Node
  attr_accessor :data, :next_node, :prev_node

  def initialize(data)
    @data = data
    @next_node = nil
    @prev_node = nil
  end
end

class DoubleLinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      new_node.prev_node = @tail
      @tail = new_node
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head.prev_node = new_node
      @head = new_node
    end
  end

  def print_list
    current = @head
    while current
      print "#{current.data} -> "
      current = current.next_node
    end
    puts "nil"
  end

  def reverse_print
    current = @tail
    while current
      print "#{current.data} -> "
      current = current.prev_node
    end
    puts "nil"
  end

  def reverse_linked_list
    current = @head
    while current
      temp = current.next_node
      current.next_node = current.prev_node
      current.prev_node = temp
      @tail = current if current.prev_node.nil? # Update tail to the last node
      current = current.prev_node # Move to the next node
    end
    @head, @tail = @tail, @head # Swap head and tail pointers
  end  
end

dll = DoubleLinkedList.new
dll.append(1)
dll.append(2)
dll.append(3)
dll.prepend(0)
dll.reverse_linked_list
dll.print_list