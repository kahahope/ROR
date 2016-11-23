numbers_fibonachi = [0, 1]
loop do
	new_number = numbers_fibonachi[-2] + numbers_fibonachi[-1]
	break if new_number >= 100
	numbers_fibonachi << new_number
end
puts numbers_fibonachi
