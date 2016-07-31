contents = ['Table of Contents',['Chapter 1:  Getting Started','page  1'],['Chapter 2:  Numbers','page  9'],['Chapter 3:  Letters','page  13']]
line_width = 80
puts(contents[0].center(line_width))
puts
puts(contents[1][0].ljust(line_width/2) + contents[1][1].rjust(line_width/2))
puts(contents[2][0].ljust(line_width/2) + contents[2][1].rjust(line_width/2))
puts(contents[3][0].ljust(line_width/2) + contents[3][1].rjust(line_width/2))