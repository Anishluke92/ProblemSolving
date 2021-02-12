=begin
 Dueque data structure 
 In a double ended queue, insertion and removal of elements can be performed from either from the front or rear
=end


class Dequeue 
  attr_reader :deque 

  def initialize
    @deque = []
  end

  def is_empty 
    return "Queue is empty...!" if @deque.length < 1
    "Queue is not empty"
  end 
 
  def add_front(item)
    @deque.push(item)
  end 

  def add_rear(item)
    @deque.unshift(item)
  end 

  def remove_front
    @deque.pop
  end 
  
  def remove_rear 
    @deque.shift 
  end 

  def size 
    @deque.length 
  end 

  def display 
    @deque 
  end 

end 


deque = Dequeue.new 

print deque.is_empty
puts ""
deque.add_front("Day-1")
deque.add_front("Day-2")
deque.add_front("Day-3")
print deque.display
puts ""
deque.add_rear("Day-6")
deque.add_rear("Day-7")
deque.add_rear("Day-8")
deque.add_rear("Day-9")
print deque.display
puts ""
deque.remove_rear
print deque.display
puts ""
deque.remove_front
puts ""
print deque.display
puts ""
print deque.size
puts ""
print deque.is_empty