module Enumerable
  def self.any?(list)
    return unless block_given?

    i = 0
    while i < list.length
      return true if yield list[i]

      i += 1
    end
    false
  end

  def self.all?(list)
    return unless block_given?

    i = 0
    while i < list.length
      return false unless yield list[i]

      i += 1
    end
    true
  end

  def self.filter(list)
    return unless block_given?

    arr = []
    i = 0
    while i < list.length
      arr.push(list[i]) if yield list[i]
      i += 1
    end
    arr
  end
end
