# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0 then return 0
  elsif arr.length == 1 then return arr[0] 
  else
    arr2 = []
    arr2 = arr.sort!
    a = arr2.pop
    b = arr.max
    sum = a + b
    return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 || n == 0 then return false
  elsif arr.length == 1 || n == 1 then return false
  else
    for i in arr do
      for j in arr do
        if i != j
          if i + j == n
            return true
          end
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  greeting = "Hello, "+name
  return greeting
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowels = ['a','e','i','o','u','#','U']
  
  if s.length == 0 
    return false
  else
    s.downcase
    for i in vowels do
      if i == s[0] 
        return false
      end
    end
    return true
  end
  
  # if s.length == 0
  #   return false
  # else
  #   n = s[0].downcase.count 'aeiou#'
  #   if n > 0 
  #     return false
  #   else
  #     return true
  #   end
  # end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.delete(" ")
  n = s.length
  if n == 0
    return false
  else
    x = s.delete('01')
    if x.length != 0
      return false
    else
      if s.to_i(2) % 4 == 0
        return true
      else
        return false
      end 
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_reader :isbn,:price
attr_writer :isbn,:price

def initialize(isbn, price)
  @isbn = isbn
  @price = price

  if isbn.length == 0 || price <= 0
    return raise ArgumentError
  end
end

def price_as_string
  n = '%.2f' % @price
  return "$#{n}"
end
end