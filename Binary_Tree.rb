
=begin
    Simple Binary Tree data structure and search algorithm
=end
class BinarySearchTree
    attr_accessor :root
    class Node
      attr_accessor :data, :left, :right
      def initialize(data)
          @data = data 
          @left = nil
          @right = nil 
      end 
      def insert(key)
        if key <= @data 
          @left.nil? ? @left = Node.new(key) : @left.insert(key)
        elsif key > @data 
          @right.nil? ? @right = Node.new(key) : @right.insert(key)
        end 
      end 
    end
  
    def initialize 
      @root = nil
    end 
    
    def insert(key)
      if @root.nil?
          @root = Node.new(key)
      else
          @root.insert(key)
      end
    end
  
    def inOrderTraversal(node = @root)
      return if node == nil
      inOrderTraversal(node.left)
      puts node.data 
      inOrderTraversal(node.right)
    end 
  
    def postOrderTraversal(node = @root)
      return if node == nil
      puts node.data
      postOrderTraversal(node.left)
      postOrderTraversal(node.right)
    end 
  
    def preOrderTraversal( node = @root)
      return if node == nil
      preOrderTraversal(node.left)
      preOrderTraversal(node.right)
      puts node.data
    end
    
    def search(target, node = @root)
      return "item Not found" if node.nil?
      if target < node.data
          search(target, node.left)
      elsif target > node.data 
          search(target, node.right)
      else
          return node.data
      end 
    end
  end 
  
  btds = BinarySearchTree.new
  btds.insert(50)
  btds.insert(25)
  btds.insert(75)
  btds.insert(15)
  btds.insert(60)
  btds.insert(33)
  btds.insert(44)
  btds.insert(80)
  btds.insert(50)
  btds.insert(100)
  puts "inOrderTraversal"
  btds.inOrderTraversal
  puts "postOrderTraversal"
  btds.postOrderTraversal
  puts "preOrderTraversal"
  btds.preOrderTraversal
  puts "Search"
  puts btds.search(33)
  puts 
  puts btds.search(11)
  
  
  
     