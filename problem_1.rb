puts "Start of Range:"
range_start = gets.chomp.to_i
puts "End of Range (up to):"
range_end = gets.chomp.to_i
puts "First multiple to select by:"
multiple_one = gets.chomp.to_i
puts "Second multiple to select by:"
multiple_two = gets.chomp.to_i


def range_sum(range_start, range_end, multiple_one, multiple_two)

  range_array = *(range_start...range_end)

  selected_numbers = range_array.select do |number|
    (number % multiple_one == 0) || (number % multiple_two == 0)
  end

  sum_of = selected_numbers.reduce(:+)

  puts sum_of

end



range_sum(range_start, range_end, multiple_one, multiple_two)
