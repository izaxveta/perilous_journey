gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedList_Test < Minitest::Test
  def test_it_exists
    #skip
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_list_starts_with_no_head
    #skip
    list = LinkedList.new
    assert_nil nil, list.head
  end

  def test_add_head_node
    #skip
    list = LinkedList.new
    list.append("Swan")
    assert_nil nil, list.head.next
  end

  def test_you_can_add_another_node
    #skip
    list = LinkedList.new
    list.append("Swan")
    list.append("Regina")
    assert_equal "Regina", list.head.next.surname
  end

  def test_how_many_nodes_are_in_it
    #skip
    list = LinkedList.new
    list.append("Swan")
    assert_equal 1, list.count
  end

  def test_node_behind_the_head
    #skip
    list = LinkedList.new
    list.append("Swan")
    assert_nil nil, list.head.next
  end

  def test_whose_nodes_is_this
    # skip
    list = LinkedList.new
    list.append("Swan")
    assert_equal "The Swan family.", list.to_string
  end

  def test_to_string_can_return_two_families
    list = LinkedList.new
    list.append("Swan")
    list.append("Regina")
    assert_equal "The Swan family, followed by the Regina family.", list.to_string
  end

  def test_to_string_can_return_multiple_families
    list = LinkedList.new
    list.append("Swan")
    list.append("Regina")
    list.append("Snow")
    assert_equal "The Swan family, followed by the Regina family, followed by the Snow family.", list.to_string
  end

  def test_add_node_to_the_beginning
    list = LinkedList.new
    list.append("Swan")
    list.append("Regina")
    list.prepend("Emma")
    assert_equal "The Emma family, followed by the Swan family, followed by the Regina family.", list.to_string
  end

  def test_pop_eliminates_last_node_with_dysentry
    list = LinkedList.new
    list.append("Swan")
    list.append("Regina")
    list.pop
    assert_equal "The Swan family." , list.to_string
  end
end
