require_relative 'my_list'
require_relative 'my_enumerable'

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
