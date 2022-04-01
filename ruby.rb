# get fibonacci number using iteration
# 0 index = 0
def fibonacci_i(n)
  output = [0, 1]
  (n - 2).times do
    value = output[-2] + output[-1]
    output << value
  end
  print output
end

fibonacci_i(9)
fibonacci_i(16)

# get fibonacci numbder using recursion
def fibonacci_r(n)
  if n.zero?
    0
  elsif n == 1
    1
  else
    fibonacci_r(n - 1) + fibonacci_r(n - 2)
  end
end

puts fibonacci_r(8)
puts fibonacci_r(15)
