def factorial(num)
  return num if num <= 1

  return(num * factorial(num - 1))
end

puts factorial(5) # => 120
