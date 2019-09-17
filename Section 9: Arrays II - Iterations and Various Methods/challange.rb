# [1, 2, 3, 4, 5]
# Write a loop that gives me a sum of
# the products of each index and its value

numbers = [1, 2, 3, 4, 5]
sum = 0

numbers.each_with_index { |number, index| sum += number * index }

puts sum

# [-1, 2, 1, 2, 5, 7, 3]
# Prints the product of the element and its index
# if the index is greater than the element
# create this within a method

elements = [-1, 2, 1, 2, 5, 7, 3]

def print_if (elements)
  elements.each_with_index { |element, index| puts element * index if index > element }
end

print_if elements

numbers = [3, 8, 11, 15, 89]

# Write a cubes method that accepts an array
# and returns a new array. The new array will
# have all values from the original one cubed.

def cubes(array)
  array.map { |element| element ** 3 }
end

p cubes(numbers)

all_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def even_and_odds(numbers)
  numbers.partition { |number| number.odd? }
end

p even_and_odds(all_numbers)