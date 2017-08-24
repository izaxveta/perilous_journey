require './lib/node'
require 'pry'

class LinkedList
attr_reader :head, :count
  def initialize
    @head = nil
    @count = 0
  end

  def append(name, supplies = nil)
    current_wagon = Node.new(name, supplies)
    @count += 1
    if head == nil
      @head = current_wagon
    else
      position(@head, current_wagon)
    end
  end

  def prepend(name, supplies = nil)
    current_wagon = Node.new(name, supplies)
    @count += 1
    if head == nil
      @head = current_wagon
    end
    new_head = @head
    current_wagon.next = new_head
    @head = current_wagon
  end

  def position(head, current_wagon)
    if head.next == nil
      head.next = current_wagon
    else
      position(head.next, current_wagon)
    end
  end

  def to_string
    family_lineup = "The #{head.surname} family"
    current_wagon = head.next
    until current_wagon == nil do
      family_lineup.concat(", followed by the #{current_wagon.surname} family")
      current_wagon = current_wagon.next
    end
    family_lineup.concat(".")
  end

  def insert(index, name, supplies = nil)
    current_wagon = head
    (index-1).times do
      if current_wagon.next != nil
      current_wagon = current_wagon.next
      end
    end
    new_node = Node.new(name, supplies)
    @count += 1
    if current_wagon.next != nil
      new_node.next = current_wagon.next
    end
    current_wagon.next = new_node
  end

  def find (start, quantity)
    current_wagon = head
    start.times do
      if current_wagon.next != nil
        current_wagon = current_wagon.next
      end
    end
      lineup = "The #{current_wagon.surname}"
      (quantity-1).times do
      current_wagon = current_wagon.next
      lineup.concat(", followed by #{current_wagon.surname}")
    end
      lineup.concat(".")
  end

  def includes?(name)
    current_wagon = head
    until current_wagon == nil
      if current_wagon.surname == name
        return true
      else
        current_wagon = current_wagon.next
      end
    end
      false
  end

  def pop
    current_wagon = head
    until current_wagon.next.next == nil
      current_wagon = current_wagon.next
    end
    puts "The #{current_wagon.next.surname} family has died of dysentery."
    current_wagon.next = nil
    @count -= 1
  end

end
