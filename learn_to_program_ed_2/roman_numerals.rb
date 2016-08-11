# roman numerals traditional
def subtract number, roman_number
	number - roman_number
end

def add_to_numeral roman_letter, roman_string
	roman_string << roman_letter
end


while true
	puts "What integer would you like to convert? (or type 'q' to quit)"
	original_input = gets.chomp
	number = original_input.to_i
	roman_numeral = Array.new

	if original_input == 'q'
		break
	else

		while true
			if number >= 1000
				number = subtract(number, 1000)
				roman_numeral = add_to_numeral("M", roman_numeral)
			elsif number >= 500
				number = subtract(number, 500)
				roman_numeral = add_to_numeral("D", roman_numeral)
			elsif number >= 100
				number = subtract(number, 100)
				roman_numeral = add_to_numeral("C", roman_numeral)
			elsif number >= 50
				number = subtract(number, 50)
				roman_numeral = add_to_numeral("L", roman_numeral)
			elsif number >= 10
				number = subtract(number, 10)
				roman_numeral = add_to_numeral("X", roman_numeral)
			elsif number >= 5
				number = subtract(number, 5)
				roman_numeral = add_to_numeral("V", roman_numeral)
			elsif number >= 1
				number = subtract(number, 1)
				roman_numeral = add_to_numeral("I", roman_numeral)
			else
				break
			end
		end

		puts
		puts "#{original_input} is #{roman_numeral.join}."
	end

end


# Pseudocode:

# take int
# start loop
# 	if greater than 1000
# 		subtract 1000, add M
# 	if greater than 500
# 		subtract 500, add D
# 	if greater than 100
# 		subtract 100, add C
# 	if greater than 50
# 		subtract 50, add L
# 	if greater than 10
# 		subtract 10, add X
# 	if greater than 1
# 		subtract 1, add I
# 	else
# 		break
# 	end if
# end loop