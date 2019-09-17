def find_day_of_year_by_number(number)
  current_date = Time.new(2019, 1, 1)
  one_day = 60 * 60 * 24

  date = current_date + (one_day * number - 1)

  date
end

p find_day_of_year_by_number(1)
p find_day_of_year_by_number(2)
p find_day_of_year_by_number(100)
p find_day_of_year_by_number(365)