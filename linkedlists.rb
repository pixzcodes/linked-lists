class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append value
    # adds a new node containing value to the end of the list
    new_node = Node.new(value)
    @tail.next_node = new_node
    @tail = new_node
  end

  def prepend value
    # adds a new node containing value to the start of the list 
    new_node = Node.new(value, @head)
    @head = new_node
  end

  def size 
    # returns the total number of nodes in the list
  end

  def at index
    # returns the node at the given index
  end

  def pop
    # removes the last element from the list
  end

  def contains? value
    # returns true if the passed in value is in the list and otherwise returns false
  end

  def find value
    # returns the index of the node containing value, or nil if not found
  end

  def to_s
    # represents linked list as a string
    # format should be ( value ) -> ( value ) -> ( value ) -> nil
   
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize value = nil, next_node = nil
    @next_node = next_node
    @value = value
  end
end
