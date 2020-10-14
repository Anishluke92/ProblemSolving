=begin
4. Create a function that takes voltage and current and returns the calculated power.
circuit_power(230, 10) ➞ 2300
circuit_power(110, 3) ➞ 330
circuit_power(480, 20) ➞ 9600
=end

def circuit_power(voltage, current)
  voltage*current
end
puts circuit_power(230, 10) 
puts circuit_power(110, 3) 
puts circuit_power(480, 20) 