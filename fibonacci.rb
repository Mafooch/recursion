def fibonacci(nth)
  if nth == 1 || nth == 2
    1
  else
    fibonacci(nth - 1) + fibonacci(nth - 2)
  end
end

puts fibonacci(5) #=> 5

################################
#optimized with metaprogramming#
################################

# no longer recursive

def fib_iter(n)
  curr_num, next_num = 0, 1
  (n).times do
    curr_num, next_num = next_num, curr_num + next_num
  end
  curr_num
end
puts fib_iter(1000)
