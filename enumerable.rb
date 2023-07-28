module MyEnumerable
  def all?(&block)
    each { |element| return false unless block.call(element) }
    true
  end

  def any?(&block)
    each { |element| return true if block.call(element) }
    false
  end

  def filter(&block)
    result = []
    each { |element| result << element if block.call(element) }
    result
  end
end

class MyList
  include MyEnumerable
  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end
# Verify our solution
list = MyList.new(1, 2, 3, 4)
puts 'Test #all?'
puts(list.all? { |element| element < 5 }) # Should return true
puts(list.all? { |element| element > 5 }) # Should return false
puts "\nTest #any?"
puts(list.any? { |element| element == 2 }) # Should return true
puts(list.any? { |element| element == 5 }) # Should return false false
puts "\nTest #filter"
git aputs(list.filter(&:even?)) # Should return [2, 4]
