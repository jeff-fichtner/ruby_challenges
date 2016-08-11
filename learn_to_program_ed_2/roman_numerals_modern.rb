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
			elsif number >= 900
				number = subtract(number, 900)
				roman_numeral = add_to_numeral("CM", roman_numeral)
			elsif number >= 500
				number = subtract(number, 500)
				roman_numeral = add_to_numeral("D", roman_numeral)
			elsif number >= 400
				number = subtract(number, 400)
				roman_numeral = add_to_numeral("CD", roman_numeral)
			elsif number >= 100
				number = subtract(number, 100)
				roman_numeral = add_to_numeral("C", roman_numeral)
			elsif number >= 90
				number = subtract(number, 90)
				roman_numeral = add_to_numeral("XC", roman_numeral)
			elsif number >= 50
				number = subtract(number, 50)
				roman_numeral = add_to_numeral("L", roman_numeral)
			elsif number >= 40
				number = subtract(number, 40)
				roman_numeral = add_to_numeral("XL", roman_numeral)
			elsif number >= 10
				number = subtract(number, 10)
				roman_numeral = add_to_numeral("X", roman_numeral)
			elsif number >= 9
				number = subtract(number, 9)
				roman_numeral = add_to_numeral("IX", roman_numeral)
			elsif number >= 5
				number = subtract(number, 5)
				roman_numeral = add_to_numeral("V", roman_numeral)
			elsif number >= 4
				number = subtract(number, 4)
				roman_numeral = add_to_numeral("IV", roman_numeral)
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


# >3 added together

# IV	4 = 5 - 1
# IX	9 = 10 - 1
# XL	40 = 50 - 10
# XC	90 = 100 - 10
# CD	400 = 500 - 100
# CM	900 = 100 - 100