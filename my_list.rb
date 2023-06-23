require_relative 'enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def eachrequire_relative 'enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each { |element| block.call(element) }
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # Output: true
puts(list.all? { |e| e > 5 }) # Output: false

# Test #any?
puts(list.any? { |e| e == 2 }) # Output: true
puts(list.any? { |e| e == 5 }) # Output: false

# Test #filter
puts(list.filter(&:even?)) # Output: [2, 4]
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # Output: true
puts(list.all? { |e| e > 5 }) # Output: false

# Test #any?
puts(list.any? { |e| e == 2 }) # Output: true
puts(list.any? { |e| e == 5 }) # Output: false

# Test #filter
puts(list.filter(&:even?)) # Output: [2, 4]
