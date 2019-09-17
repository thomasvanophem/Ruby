def fibonacci(number1, number2, sequence)
  next_number = number1 + number2
  sequence << next_number if next_number < 4000000
  fibonacci(number2, next_number, sequence) if next_number < 4000000
end

def fibonacci_sequence(f1, f2, sequence)
  next_number = f1 + f2
  
  if next_number < 400000
    sequence << next_number
    fibonacci_sequence(f2, next_number, sequence)
  end
end

sequence = [1, 2]
# fibonacci(1, 2, sequence)
# p sequence
# sum = 0
# sequence.each { |number| sum += number if number.even? }
# p sum
fibonacci_sequence(1, 2, sequence)

p sequence.inject