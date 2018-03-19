require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'
require 'pry'

class TestNode < Minitest::Test
  def test_class_exists
    beat = Node.new('plop')

    assert_instance_of Node, beat
  end

  def test_data
    beat = Node.new('plop')

    assert_equal 'plop', beat.data
  end

  def test_next_node_default
    beat = Node.new('plop')

    assert_equal nil, beat.next_node
  end
end
