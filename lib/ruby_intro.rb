# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  return 0 if arr.length == 0
  arr.each{|x| sum = sum + x}
  return sum
end

def max_2_sum arr
  max1 = arr[0]
  max2 = arr[1]
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  arr.each{|x| max1 = x if max1 < x}
  arr.delete_at(arr.find_index(max1))
  arr.each{|x| max2 = x if max2 < x}
  return max1 + max2
end

def sum_to_n? arr, n
  return false if arr.length == 0 || arr.length == 1
  for i in 0..(arr.length-2)
    for j in (i+1)..(arr.length-1)
	  return true if arr[i] + arr[j] == n
	end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return s =~ /\A(?=[^aeiouAEIOU])(?=[a-zA-Z])/
end

def binary_multiple_of_4? s
  return false if s !~ /\A[01]+\z/
  return true if s == '0'
  return true if s =~ /\A[01]*00\z/
  return false
end

# Part 3

class BookInStock
  def initialize(isbnValue, priceValue)
	raise ArgumentError if isbnValue == ""
	raise ArgumentError if priceValue <= 0
    @isbn = isbnValue
	@price = priceValue
  end
  def isbn
    @isbn
  end
  def isbn=(value)
    @isbn = value
  end
  def price
	@price
  end
  def price=(value)
	@price = value
  end
  def price_as_string
	return "$" + @price.to_s + ".00" if @price.to_s.index(".") == nil
	return "$" + @price.to_s if @price.to_s.index(".") <= @price.to_s.length-3
	return "$" + @price.to_s + "00" if @price.to_s.index(".") == @price.to_s.length-1
	return "$" + @price.to_s + "0"
  end
end
