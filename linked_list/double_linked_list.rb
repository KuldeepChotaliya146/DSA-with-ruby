class Node
  attr_accessor :data, :prev_node, :next_node

  def initialize(data)
    @data = data
    @prev_node = nil
    @next_node = nil
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
      new_node.prev_node = @tail
      @tail.next_node = new_node
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
      end

      current = current.next_node
    end
  end

  def print_list
    current = @head
    while current
      print "#{current.data} ->"
      current = current.next_node
    end
    print "nil"
  end

  def print_reverse_list
    current = @tail
    while current
      print "#{current.data} ->"
      current = current.prev_node
    end
    print "nil"
  end
end

list = DoubleLinkedList.new
list.append(1)
list.append(2)
list.prepend(0)
list.append(3)
list.delete(2)
list.print_list
list.print_reverse_list