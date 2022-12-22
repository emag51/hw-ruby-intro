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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
