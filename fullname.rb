fullname = []
puts "Enter your first name."
fullname << gets.chomp.strip
puts "Enter your middle name."
fullname << gets.chomp.strip
puts "Enter your last name."
fullname << gets.chomp.strip
puts "Hello, #{fullname[0]} #{fullname[1]} #{fullname[2]}!"
