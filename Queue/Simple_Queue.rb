=begin
Simple Queue  Data structure 
Idea - FiFo
=end

class Queue 
  attr_reader :queues
  
  def initialize
    @queues = []
  end

  def is_empty 
    return "Queue is empty...!" if @queues.length < 1
    "Queue is not empty"
  end 

  def enqueue(item)
    @queues.unshift(item)
  end 

  def dequeue
    @queues.pop
  end 

  def size 
    @queues.size 
  end 

  def display 
    @queues
  end 

  def peek 
    @queues[-1]
  end 
end 


queues = Queue.new 
queues.enqueue("q")
queues.enqueue(1)
queues.enqueue(2)
queues.enqueue(3)
queues.enqueue(4)
queues.enqueue(10)

print queues.size
puts ""
print queues.display
puts ""
print queues.peek
puts ""
print queues.dequeue
puts ""
print queues.display
puts ""
print queues.is_empty
puts ""





