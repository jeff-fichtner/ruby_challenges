def grandma_fail
	puts "HUH?! SPEAK UP, SONNY!"
end

def grandma_succeed
	rand_year = 1930 + rand(21)
	puts "NO, NOT SINCE #{rand_year}!"
end

def grandma_can_hear input
	if input == input.upcase
		grandma_succeed
	else
		grandma_fail
	end
end

puts "Start talking to Grandma. She can't hear well."
puts
input = gets.chomp
while input != "BYE"
	grandma_can_hear(input)
	input = gets.chomp
end
puts "TAKE CARE, SUGARPLUMS!"