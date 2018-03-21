require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'
require 'pry'

class TestJunglBeat < Minitest::Test
  def test_class_exists
    jb = JungleBeat.new

    assert_instance_of JungleBeat, jb
  end

  def test_jungle_beat_list
    jb = JungleBeat.new

    refute_nil jb.list
  end

  def test_jungle_beat_list_head
    jb = JungleBeat.new

    assert_nil jb.list.head
  end

  def test_jungle_beat_append
    jb = JungleBeat.new
    jb.append('deep doo ditt')

    assert_equal 'deep doo ditt', jb.append('deep doo ditt')
  end

  def test_jb_attributes
    jb = JungleBeat.new
    jb.append('deep doo ditt')

    assert_equal 'deep', jb.list.head.data
    assert_equal 'doo', jb.list.head.next_node.data
  end

  def test_append_method_overwrites_existing
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    jb.append('woo hoo shu')

    assert_equal 'deep doo ditt woo hoo shu', jb.list.to_string
    assert_equal 6, jb.count
  end
end
#
# jb = JungleBeat.new
# => <JungleBeat list=<LinkedList head=nil #234567890890> #456789045678>
# > jb.append('deep doo ditt')

# > jb.append('woo hoo shu')
# => 'woo hoo shu'
# > jb.count
# 6
