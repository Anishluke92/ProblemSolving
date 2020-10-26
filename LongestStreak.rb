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

def string_to_date(date)
  date[:date].split('-').map(&:to_i)
end

# limitations: assumes that every month has 31 days
def get_next_day(current_date)
  should_be_next_day = current_date[2] + 1
  should_be_next_month = current_date[1]
  should_be_next_year = current_date[0]

  if should_be_next_day > 31
    should_be_next_day = 1
    should_be_next_month = current_date[1] + 1

    if should_be_next_month > 12
      should_be_next_month = 1
      should_be_next_year = current_date[0] + 1
    end
  end

  "#{should_be_next_year}-#{should_be_next_month}-#{should_be_next_day}"
end


def longest_streak(array)
  longest_streak = 0
  current_streak = 1

  array.each_with_index do |date, index|
    current_date = string_to_date(date)

    next_in_array = array[index + 1]
    next unless next_in_array

    should_be_next = get_next_day(current_date)

    next_date = string_to_date(array[index + 1])

    if should_be_next == "#{next_date[0]}-#{next_date[1]}-#{next_date[2]}"
      current_streak += 1
    else
      current_streak = 1
    end

    if current_streak > longest_streak
      longest_streak = current_streak
    end

  end

  longest_streak
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
    date: "2019-12-26"
  },
  {
    date: "2019-12-27"
  },
  {
    date: "2019-12-28"
  },
  {
    date: "2019-12-29"
  },
  {
    date: "2019-12-30"
  },
  {
    date: "2019-12-31"
  },
  {
    date: "2020-01-01"
  },
  {
    date: "2020-01-02"
  }
])

puts ""
print longest_streak([])
