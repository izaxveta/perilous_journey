gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'

class NodeTest < Minitest::Test

  def test_it_has_a_surname
    #skip
    node = Node.new("Burke", nil)
    assert_equal "Burke", node.surname
  end

  def test_it_has_a_next_node
    #skip
    node = Node.new("Cindy")
    assert_equal nil, node.next_node
  end
end

node.surname = "Blake"
