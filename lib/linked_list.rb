require './lib/node'
class LinkedList
  attr_reader :head
  def initialize
    @head         = nil
    @node_count   = 0
    @current_node = @head
  end

  def append(data)
    current_node = @head
    if @head == nil
      @head = Node.new(data)
      @node_count += 1
    else
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
      @node_count += 1
    end
    data
  end

  def count
    @node_count
  end

  def to_string
    current_node = @head
    beat = "#{@head.data}"
    beat unless @head.nil?
    until current_node.next_node.nil?
      current_node = current_node.next_node
      beat.concat(" #{current_node.data}")
    end
    beat
  end
end
