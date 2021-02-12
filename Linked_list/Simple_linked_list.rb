=begin
 Simple Linked list 
=end 

class Node
  attr_accessor :data, :next_pointer
  def initialize(data, next_pointer = nil)
    @data = data 
    @next_pointer = next_pointer 
  end 
end

class Linked_list
  attr_accessor :head
  def initialize 
    @head = nil
  end 
  
  def print_list
    current_head = @head 
    while current_head != nil
      print " #{current_head.data }"
      current_head = current_head.next_pointer
    end 
  end

  def find_tail
    current  = @head
    return current if !current.next_pointer
    return current if !current.next_pointer while (current = current.next_pointer)
  end
  
  def find_node(index)
    current = @head
    index.times do 
      current  = current.next_pointer
    end 
    return current
  end 

  def add(data)
    new_addition = Node.new(data)
    return @head = new_addition if @head.nil?
    current_head = @head 
    until current_head.next_pointer.nil?
        current_head = current_head.next_pointer
    end 
    current_head.next_pointer = new_addition
  end 
  
  def remove(index)
    node = Node.new(0)
    return "The storage is empty" if @head.nil?

    if (index == 0)
        current = @head 
        new_current = current.next_pointer
        @head = new_current
    end 

    if (index > 0)
        current = find_node(index)
        before_current = find_node(index - 1)
        after_current = current.next_pointer
        before_current.next_pointer = current.next_pointer
    end 
  end 


  def add_at_beginning(data, index)
    if @head.nil? || index == 0
        current = Node.new(data)
        current.next_pointer = @head
        @head = current 
    end
  end 

  def add_at_end(data)
    new_data = Node.new(data)
    return @head = new_data if @head.nil? 
    current_head = find_tail()
    current_head.next_pointer = new_data
  end 

  def add_at_between(data, index)
    return add_at_end(data) if index == 0 
    before_current = find_node(index - 1) 
    current = Node.new(data)
    after_current = before_current.next_pointer
    before_current.next_pointer = current
    current.next_pointer = after_current
  end 
end 

lkd = Linked_list.new
lkd.add(8)
lkd.add(5)
lkd.add(4)
lkd.add(1)
lkd.print_list
puts
lkd.remove(1)
lkd.print_list
puts ""
lkd.add_at_beginning(0, 0)
lkd.print_list
puts ""
lkd.add_at_end(2)
lkd.print_list
puts ""
lkd.add_at_between(10,2)
lkd.print_list