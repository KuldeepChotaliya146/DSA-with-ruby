class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end

class CircularLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    
    if @head.nil?
      @head = new_node
      @head.next_node = @head
    else
      current = @head
      while current.next_node != @head
        current = current.next_node
      end
      current.next_node = new_node
      new_node.next_node = @head
    end
  end

  def prepend(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
      @head.next_node = @head
    else
      current = @head
      while current.next_node != @head
        current = current.next_node
      end
      current.next_node = new_node
      new_node.next_node = @head
      @head = new_node
    end
  end

  def delete(value)
    return if @head.nil?
  
    if @head.data == value
      if @head.next_node == @head
        @head = nil  # Only one node, set head to nil
      else
        current = @head
        while current.next_node != @head
          current = current.next_node
        end
        current.next_node = @head.next_node  # Update the last node's next reference
        @head = @head.next_node  # Update the head to the next node
      end
      return
    end
  
    prev = nil
    current = @head
    while current.data != value && current.next_node != @head
      prev = current
      current = current.next_node
    end
  
    return if current.data != value  # Node not found
  
    prev.next_node = current.next_node  # Remove the node from the list
  end
  

  def print_list
    current = @head
    while current
      print "#{current.data} ->"
      current = current.next_node
      break if current == @head
    end
    print "head"
  end
end


list = CircularLinkedList.new
list.append(1)
list.append(2)
list.prepend(0)
list.delete(2)
list.print_list