require './lib/node'
class LinkedList
  attr_reader :head
  def initialize
    @head         = nil
    @node_count   = 0
  end

  def append(data)
    current_node = @head
    if @head == nil
      @head = Node.new(data)
      @node_count += 1
    else
      until current_node.next_node.nil?
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

  def prepend(data)
    old_head = @head
    @head = Node.new(data) if @head.nil?
    @head = Node.new(data)
    @head.next_node = old_head
    @node_count += 1
  end

  def insert(index, data)
    count = 0
    current_node = @head
    new_node = Node.new(data)
    until count == index - 1
      current_node = current_node.next_node
      count += 1
    end
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(index, count)
    current_node = @head
    node = 0
    until node == index
      current_node = current_node.next_node
      node +=1
    end
    beat = "#{current_node.data}"
    (count - 1).times do current_node = current_node.next_node
      beat.concat(" #{current_node.data}")
    end
    beat
  end
end
