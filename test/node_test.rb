require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class TestNode < Minitest::Test
  def test_class_exists
    node = Node.new('plop')

    assert_instance_of Node, node
  end

  def test_data
    node = Node.new('plop')

    assert_equal 'plop', node.data
  end

  def test_next_node_default
    node = Node.new('plop')

    assert_equal nil, node.next_node
  end
end
