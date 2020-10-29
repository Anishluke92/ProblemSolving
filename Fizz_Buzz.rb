=begin
Write a short program that prints each number from 1 to 100 on a new line.

For each multiple of 3, print "Fizz" instead of the number.

For each multiple of 5, print "Buzz" instead of the number.

For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.  


    
=end
    (1..100).each do |x|
     puts case
       when x.modulo(3) == 0 && x.modulo(5) == 0 then 'FizzBuzz'
       when x.modulo(3) == 0 then 'Fizz'
       when x.modulo(5) == 0 then 'Buzz'
       else x
     end
    end

