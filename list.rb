require_relative 'enumerable'

class MyList
  include Enumerable

  def initialize(*list)
    @list = list
  end

  def each
    i = 0

    while i < @list.length

      return unless block_given?

      yield @list[i]

      i += 1

    end
  end

  Enumerable.any?(@list)

  Enumerable.all?(@list)

  Enumerable.filter(@list)
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }

list.all? { |e| e > 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

list.filter { |e| (e % 2).zero? }
