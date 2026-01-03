require_relative './Node'

class LinkedList
  attr_accessor :list, :head
  def initialize(list, head = nil, size = 0)
    @list = list
    @head = head
    @size = size
  end

  def append(value)
    if(@size == 0)
      @head = value
    end
    @list << value
    @size += 1
  end

  def prepend(value)
    @list[0] << value
    @head = value
    @size += 1
  end

  def size
    return @size
  end

  def head
    return @head
  end

  def tail
    return @list[-1]
  end

  def at(index)
    return @list[index]
  end

  def pop
    if(@head)
      deleted_head = @head
      @head = @next_node
      return deleted_head
    else
      return nil
    end
  end

  def contains?(value)
    @list.each do |element|
      if(element == value)
        return true
      end
    end
    return false
  end

  def index(value)
    return @list[value]
  end

  def to_string
    if(@size < 0)
      return ""
    else
      @list.each do |element|
        "( #{element} ) -> "
      end
    end
  end  
end
