class Node
  attr_accessor :surname, :next, :supplies

  def initialize(surname, supplies=nil, next_node = nil)
    @surname = surname
    @supplies = supplies
    @next = next_node
  end
end


# node = Node.new("Burke")
#
# puts node.surname
#
# print node.next_node
