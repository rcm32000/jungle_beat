require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'

class TestLinkedList < Minitest::Test
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
end
