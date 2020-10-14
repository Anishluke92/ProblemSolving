=begin 
Create a function that takes an array of date hashes and return the "longest streak" (i.e. longest number of consecutive days in a row).

Example
longest_streak([
  {
    date: "2019-09-18"
  },
  {
    date: "2019-09-19"
  },
  {
    date: "2019-09-20"
  },
  {
    date: "2019-09-26"
  },
  {
    date: "2019-09-27"
  },
  {
    date: "2019-09-30"
  }
]) ➞ 3
Notes
An empty array should return 0.
The hashes are with symbol keys (i.e. get a date with [:date]).
=end

def calculate_longest_streak(array)
  startposition = 0 
  endposition = 0
  array.each_with_index do |date, index|
    
  end

end

def longest_streak(array)
  dates = []
  if !array.empty?
    array.each do |element|
      element.each do |key, values|
        dates.push(values[-2..10])
      end
    end
  else
    return 0
  end
  calculate_longest_streak(dates)
end


print longest_streak([
  {
    date: "2019-09-18"
  },
  {
    date: "2019-09-19"
  },
  {
    date: "2019-09-20"
  },
  {
    date: "2019-09-26"
  },
  {
    date: "2019-09-27"
  },
  {
    date: "2019-09-30"
  }
]) 

puts ""
print longest_streak([])
