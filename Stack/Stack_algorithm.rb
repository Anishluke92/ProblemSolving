=begin
Stack Data Structure.
=end

class Stack
  attr_reader :stack, :top, :capacity
  def initialize
    @stack = Array.new
    @top = -1
  end 
 
  def capacity(size)
    @capacity = size 
  end
  
  def size_occupied
    return @top + 1
  end 

  def display 
    @stack 
  end

  def push(item)
    if @top != @capacity - 1
      @top += 1
      @stack.push(item)
    else
      "Stack full..!"
    end 
  end

  def pop 
    if @top != -1
      @top -= 1
      @stack.pop
    else
      "Stack is empty..!"
    end 
  end

  def peek 
    @stack[0]
  end 

end 

stack = Stack.new
stack.capacity(6)
puts ""
stack.push(15)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)
stack.push(6)
print stack.push(6)
puts ""
print stack.push(6)
puts ""
print stack.display
puts ""
stack.pop
stack.pop
stack.pop
stack.pop
stack.pop
stack.pop
print stack.pop
print stack.size_occupied
puts ""

