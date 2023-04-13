module Enumerable
  def Enumerable.any?(list)
    return unless block_given?
    i = 0;
    while i < list.length
      return true if yield list[i]
      i += 1
    end
    return false
  end

  def Enumerable.all?(list)
    return unless block_given?
    i = 0
    while i < list.length
      return false if !(yield list[i])
      i += 1
    end
    return true
  end

  def Enumerable.filter(list)
    return unless block_given?
    arr = []
    i = 0
    while i < list.length
      arr.push(list[i]) if yield list[i]
      i +=1
    end
    arr
  end
end