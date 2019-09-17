def FizzBuzz(number)
  i = 1

  until i > number
    output = ""

    if i % 3 == 0
      output += "Fizz"  
    end

    if i % 5 == 0
      output += "Buzz"
    end

    if line == ""
      print i
    else
      print output
    end

    print " "

    i += 1
  end
end

FizzBuzz(100)