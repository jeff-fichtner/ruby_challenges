def song_lyrics
	puts "#{counter} bottles of beer on the wall! #{counter} bottles of beer!"
	puts "Take one down, pass it around,"
	puts "#{counter-1} bottles of beer on the wall!"
end

def song_lyrics_2 counter
	puts "#{counter} bottles of beer on the wall! #{counter} bottles of beer!"
	puts "Take one down, pass it around,"
	puts "#{counter-1} bottle of beer on the wall!"
end

def song_lyrics_final counter
	puts "#{counter} bottle of beer on the wall! #{counter} bottle of beer!"
	puts "Take one down, pass it around,"
	puts "no more bottles of beer on the wall!"
end

def beer_on_the_wall
	counter = 99
	until counter == 2
		puts "#{counter} bottles of beer on the wall! #{counter} bottles of beer!"
		puts "Take one down, pass it around,"
		puts "#{counter-1} bottles of beer on the wall!"
		counter -= 1
	end
	song_lyrics_2(counter)
	counter -= 1g
	song_lyrics_final(counter)
end

beer_on_the_wall