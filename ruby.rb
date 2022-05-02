# get the factorial of a number
def factorial(n)
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
end

puts factorial(7)

# return true if a word is a palindrome, false if it is not
def palindrome(word)
  if word.length <= 1
    true
  elsif word[0] == word[-1]
      palindrome(word[1..-2])
  else
    false
  end
end

puts palindrome("dood")
puts palindrome("doodle")

# sing a nursery rhyme lol using recursion
def beer(n)
  if n.zero?
    puts 'no more bottles of beer on the wall :('
  else
    puts "#{n} bottle(s) of beer on the wall"
    beer(n - 1)
  end
end

beer(5)

# get fibonacci sequence of length n using iteration
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

# get fibonacci number using recursion
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

# THIS WAS HARD. I GOT SPLIT ARRAY TO WORK BUT HAD TO REVIEW SOLUTIONS TO GET THE MERGE TO WORK!
# recursive method that accepts array and recursively splits into two until you are left with single elements
def split_array(array)
  # base clause that will return an array of length 1
  if array.length < 2
    array
  
  # take array and split into left and right and pass back into split_array (keeps going until length = 1)
  # each time, pass the left and right arrays into the sort function
  else
    left = split_array(array.slice!(0..array.length/2 - 1))
    right = split_array(array)
    merge(left, right)
  end
end

def merge(left, right, sorted = [])
  until left.empty? || right.empty?
    if left[0] < right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
end

p split_array([1, 2, 2, 6, 4, 39, 57, 7, 2, 34, 23])
