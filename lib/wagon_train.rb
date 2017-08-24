require './lib/linked_list'

require 'pry'

class WagonTrain
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(surname, supplies = nil)
    list.append(surname, supplies)
  end

  def prepend(surname, supplies = nil)
    list.prepend(surname, supplies)
  end

  def count
    list.count
  end

  def supplies
    current_wagon = list.head
    inventory = {}
    #merge hash method
    until current_wagon == nil
      inventory.merge!(current_wagon.supplies) do |supply_type, old_count, new_count|
        old_count + new_count
      end
      current_wagon = current_wagon.next
    end
    return inventory
  end
end
