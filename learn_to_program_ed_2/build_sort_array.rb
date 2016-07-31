words = []
loop do
	puts "Type a word:"
	input = gets.chomp
	if input == ""
		break
	else
		words << input
		words.sort!
		puts "-----------"
		puts words.join(', ')
		puts "-----------"
	end
end