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

def weeklySalary(array)
  week_salary = 0
  weekend_salary = 0
  total_salary = 0
  array.each_with_index do |hours, day|
    if day >= 5
      if hours > 8 
        extra = hours - 8
        weekend_salary += (8 * 20) + (extra * 30)
      else 
        weekend_salary += (hours * 20) 
      end
    else 
      if hours > 8 
        extra = hours - 8
        week_salary += (8 * 10) + (extra * 15)
      else 
        week_salary += (hours * 10) 
      end 
    end 
  end
  week_salary + weekend_salary
end
  
print weeklySalary([8, 8, 8, 8, 8, 0, 0])
puts ""
print weeklySalary([10, 10, 10, 0, 8, 0, 0])
puts ""
print weeklySalary([0, 0, 0, 0, 0, 12, 0]) 
  