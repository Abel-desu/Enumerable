require_relative './enumerable'

class MyList
  def initialize(*args)
    @list = args
  end

  include MyEnumerable

  def each(&block)
    @list.each { |y| block.call(y) }
  end
end

list = MyList.new(1, 2, 3, 4)
p list.all? { |e| e < 5 }
p list.all? { |e| e > 5 }
p list.any? { |e| e == 2 }
p list.any? { |e| e == 5 }
p list.filter(&:even?)
