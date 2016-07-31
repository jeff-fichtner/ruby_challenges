def is_leap_year year
	if year % 100 == 0
		if year % 400 == 0
			true
		else
			false
		end
	elsif year % 4 == 0
		true
	else
		false
	end
end

def count_leap_years start_year, finish_year
	years = (start_year..finish_year).to_a
	years.each do |year|
		if is_leap_year(year)
			puts year
		end
	end
end

count_leap_years(1999, 2016)
count_leap_years(2000, 2017)
count_leap_years(2000, 2016)