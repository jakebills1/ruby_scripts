class LinkedList
  def initialize
    # an empty linked list, where the head points to nothing
    @head = nil
  end
  def append(value)
    if @head
      # if list is not empty
      find_tail.next = Node.new(value)
      # finds the last node in the list, and references its next pointer to the new node
    else
      # if list is empty
      @head = Node.new(value)
      # @head is now a reference to the first node
    end
  end
  def find_tail
    node = @head
    # node is the first element in the list
    return node if !node.next
    # return node if the next pointer is nil
    return node if !node.next while (node = node.next)
    # loop through referencing the next value until the next pointer is null, then return that node
  end
  def append_after(target, value)
    node           = find(target)
    return unless node
    old_next       = node.next
    node.next      = Node.new(value)
    node.next.next = old_next
  end
  def find(value)
    node = @head
    return false if !node.next
    return node  if node.value == value
    while (node = node.next)
      return node if node.value == value
    end
  end
  def delete(value)
    if @head.value == value
      @head = @head.next
      return
    end
    node      = find_before(value)
    node.next = node.next.next
  end
  def find_before(value)
    node = @head
    return false if !node.next
    return node  if node.next.value == value
    while (node = node.next)
      return node if node.next && node.next.value == value
    end
  end
  def print
    node = @head
    puts node
    while (node = node.next)
      puts node
    end
  end
end

class Node 
  attr_accessor :next
  attr_reader :value
  def initialize(value)
    @value = value
    @next = nil
  end
end
