require './enumerable.rb'

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

  def get_list
      @list
  end
end
