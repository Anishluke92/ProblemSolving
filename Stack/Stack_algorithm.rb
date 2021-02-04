=begin
Stack Data Structure.
=end

class Stack
  attr_reader :stack 

  def initialize 
    @stack = []
  end 

  def push(item)
    @stack.push(item)
  end 
  
  def pop 
    @stack.pop
  end 

  def size
    @stack.length 
  end
  
  def display 
    @stack 
  end 

  def peek 
    @stack[0]
  end 
end 

stack = Stack.new
stack.push(15)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)
stack.push(6)

print  stack.size
puts ""
print stack.display
puts ""
print stack.pop
puts ""
print stack.display
puts ""
print stack.peek
puts ""

