def append(ary, n)
  return ary if n < 0
  ary << n
  append(ary, n - 1)
end

print append([2], 3) # => [2, 3, 2, 1, 0]

def reverse_append(ary, n)
  return ary if n < 0
  # we just make the recursive call before appending
  # recursion exhibits LIFO i.e. last in, first out.
  reverse_append(ary, n - 1)
  ary << n
  ary
end

print reverse_append([2], 3) # => [2, 0, 1, 2, 3]
