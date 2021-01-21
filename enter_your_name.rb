
loop do
  puts "Please enter your name!"
  name = gets.chomp
  if name != ""
     puts "Hello #{name.capitalize!}, good morning!"
    break
  else
    puts "You havent entered the name please try again!"
  end
end
