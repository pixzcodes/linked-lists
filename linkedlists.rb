class LinkedList
  # made more sense to have the head and tail as attr items
  # so that i can just change them at will through out the class methods
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append value
    # adds a new node containing value to the end of the list
    new_node = Node.new(value)
    @tail.next_node = new_node unless @tail == nil # we dont want this to run unless there is no tail
    @head = new_node if @head == nil # making sure we have a head in the case of a new list
    @tail = new_node
  end

  def prepend value
    # adds a new node containing value to the start of the list 
    new_node = Node.new(value, @head)
    @head = new_node
  end

  def size 
    # returns the total number of nodes in the list
    current_node = @head 
    counter = 0
    until current_node == nil
      counter += 1
      current_node = current_node.next_node
    end
    counter
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
    string = ""
    current_node = @head # make sure we start at head
    until current_node == nil
      string = string + "( " + current_node.value.to_s + " ) -> " # template
      current_node = current_node.next_node # change to the next node
    end
    return string + "nil"
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize value = nil, next_node = nil
    @next_node = next_node
    @value = value
  end
end

# - - - TESTING SITE - - - #
list = LinkedList.new
list.append('Jeff')
list.append('Dave')
list.append('Tristin')
list.append('Jerome')



