require 'minitest/autorun'
require 'minitest/pride'
require './lib/wagon_train'

class WagonTrainTest < Minitest::Test
  def test_it_exists
    wt = WagonTrain.new
    assert_instance_of WagonTrain, wt
  end

  def test_it_can_append_with_supplies
    wt = WagonTrain.new
    wt.append("Snow", {"pounds of food"=>200})
    expected = {"pounds of food"=>200}
    assert_equal expected, wt.list.head.supplies
  end

  def test_it_can_prepend_with_supplies
    wt = WagonTrain.new
    wt.append("Snow")
    wt.prepend("Charming")
    expected = "The Charming family, followed by the Snow family."
    assert_equal expected, wt.list.to_string
  end

  def test_it_has_a_supply_inventory
    wt = WagonTrain.new
    wt.append("Snow", {"pounds of food"=>200})
    wt.append("Emma", {"pounds of food"=>200})
    wt.append("Ruby", {"sets of clothing"=>20})
    wt.append("Belle", {"ammunition"=>400})
    expected = {"pounds of food"=>400, "sets of clothing"=>20, "ammunition"=>400}
    assert_equal expected, wt.supplies
  end
end
