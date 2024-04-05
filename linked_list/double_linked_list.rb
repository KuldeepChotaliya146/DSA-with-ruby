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

  def delete(data)
    current = @head
    while current
      if current.data == data
        if @head.data == data && @tail.data == data
          @head = nil
          @tail = nil
        elsif @head.data == data
          @head = @head.next_node
          @head.prev_node = nil
        elsif @tail.data == data
          @tail = @tail.prev_node
          @tail.next_node = nil
        else
          current.prev_node.next_node = current.next_node
          current.next_node.prev_node = current.prev_node
        end
        return # Break out of the loop after deleting the node
      end
      current = current.next_node
    end  
  end

  def insert_after(node_no, data)
    new_node = Node.new(data)
    node_count = 0
    current = @head
    while current
      node_count += 1
      if node_count == node_no
        new_node.next_node = current.next_node
        new_node.prev_node = current
        current.next_node&.prev_node = new_node
        current.next_node = new_node
        return # Break out of the loop after inserting the node
      end
      current = current.next_node
    end
    puts "Node number out of range." if node_count < node_no
  end

  def insert_before(node_no, data)
    new_node = Node.new(data)
    node_count = 0
    current = @head
    while current
      node_count += 1
      if node_count == node_no
        new_node.next_node = current
        new_node.prev_node = current.prev_node
        current.prev_node&.next_node = new_node
        current.prev_node = new_node
        if current == @head
          @head = new_node
        end
        return
      end
      current = current.next_node
    end
    puts "Node number out of range." if node_count < node_no
  end
end

dll = DoubleLinkedList.new
dll.append(1)
dll.append(2)
dll.append(3)
dll.prepend(0)
dll.delete(2)
dll.insert_after(2, 2) # node, data
dll.insert_before(3, 25)
dll.print_list
dll.reverse_print
