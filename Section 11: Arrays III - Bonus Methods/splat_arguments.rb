def sum(*numbers)
  sum = 0

  #numbers.each { |number| sum += number }
  sum = numbers.reduce(:+)
  sum
end

p sum(1, 2, 3, 4, 5)