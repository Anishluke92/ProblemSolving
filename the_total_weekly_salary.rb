=begin
3. Write a function that takes an array of hours and returns the total weekly salary.
The first element of the array is the number of hours spent at work on Monday.
The second element of the array is the number of hours spent at work on Tuesday, etc.
A worker earns $10 an hour for the first 8 hours.
For every overtime hour, he's earning $15.
On Saturday and Sunday, the employer pays twice for each hour and overtime.
Examples
weekly_salary([8, 8, 8, 8, 8, 0, 0]) ➞ 400
weekly_salary([10, 10, 10, 0, 8, 0, 0]) ➞ 410
weekly_salary([0, 0, 0, 0, 0, 12, 0]) ➞ 280
Notes
Every element in the array is greater than or equal to 0.
=end

def weekly_salary(array)
  week_salary = 0
  weekend_salary = 0
  total_salary = 0
  
    #for week days 
  
  for i in 0..4
    hours = array[i]
    if hours > 0 and hours <= 8 
      week_salary += (hours * 10)
    elsif hours == 0
      next 
    else
      extra  = hours - 8
      week_salary += (80 + (extra * 15))
    end
  end
  
  for i in 5..6
     hours = array[i]
     if hours > 0 and hours <= 8 
       weekend_salary += (hours * 20)
     elsif hours == 0
       next 
     else
       extra  = hours - 8
       weekend_salary += (160 + (extra * 30))
     end
  end
    total_salary = week_salary + weekend_salary
    total_salary
end
  
print weekly_salary([8, 8, 8, 8, 8, 0, 0])
puts ""
print weekly_salary([10, 10, 10, 0, 8, 0, 0])
puts ""
print weekly_salary([0, 0, 0, 0, 0, 12, 0]) 
  
  
  
  
  
  
  
  
  
  
  
  
  