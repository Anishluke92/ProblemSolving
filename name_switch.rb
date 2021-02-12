=begin
2. Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them.
Daniel
sent
about an hour ago
Input your first name: 
Input your last name: 
Hello Lanoie Gary
=end

puts "Please, enter your first name..!"
first_name = gets.chomp.capitalize 
puts "Please, enter your last name..!"
last_name = gets.chomp.capitalize 

print "Hello #{last_name} #{first_name}"

