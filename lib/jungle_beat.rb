class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
  beats = data.split(' ').each do |beat|
    @list.append(beat)
  end
  beats.join(' ')
  end

  def count
    @list.count
  end
end
