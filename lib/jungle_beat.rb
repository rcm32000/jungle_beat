class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    # warning = 'Keep your beat length at four letters or below.'
    # if data.valid(data)
    beats = data.split(' ').each do |beat|
      @list.append(beat)
    end
    beats.join(' ')
    # else
    #   warning
    # end
  end

  def count
    @list.count
  end

  def play
    `say -r 500 #{@list.to_string}`
  end

  def valid?(data)
    data.length < 4
  end

  def valid(data)
    approved = ''
    checking = data.split(' ')
    checking.map do |beat|
      approved + checking if beat.valid?(data)
    end
  end
end
