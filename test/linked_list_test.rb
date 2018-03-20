require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'

class TestLinkedListTest < Minitest::Test
  def test_class_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_head_default_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append
    list = LinkedList.new
    list.append('doop')

    assert_equal 'doop', list.head.data
  end

  def test_next_node_default
    list = LinkedList.new
    list.append('doop')

    assert_nil list.head.next_node
  end

  def test_count_method
    list = LinkedList.new
    list.append('doop')

    assert_equal 1, list.count
  end

  def test_to_string_method
    list = LinkedList.new
    list.append('doop')

    assert_equal 'doop', list.to_string
  end

  def test_two_nodes
    list = LinkedList.new

    assert_nil list.head
    list.append('doop')

    refute_nil list.head
    assert_nil list.head.next_node
    list.append('deep')

    refute_nil list.head.next_node
    assert_equal 2, list.count
    assert_equal 'doop deep', list.to_string
  end

  def test_three_nodes
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    assert_nil list.head.next_node.next_node
    list.append('beep')

    refute_nil list.head.next_node.next_node
    assert_equal 3, list.count
    assert_equal 'doop deep beep', list.to_string
  end

  def test_prepend
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')

    assert_equal 'dop plop suu', list.to_string
    assert_equal 3, list.count
  end

  def test_insert
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.insert(1, 'woo')

    assert_equal 'dop woo plop suu', list.to_string
  end

  def test_find
    list = LinkedList.new
    list.append('shi')
    list.append('shu')
    list.prepend('deep')
    list.insert(1, 'woo')
    list.append('blop')

    assert_equal 'deep woo shi shu blop', list.to_string
    assert_equal 'shi', list.find(2, 1)
  end
end
