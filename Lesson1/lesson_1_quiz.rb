# 1. What is the value of a after the below code is executed?

a = 1
b = a
b = 3

p a

# The value of a should be 1. In this conext, Ruby is Pass-by value.

# 2. What's the difference between an Array and a Hash?

hash = {key: "value", another_key: "another value"}   # Hashes contain key/value pairs.

array = ["item1", "item2", "item3"]  # Array contain an ordered list of items.

# 3. Every Ruby expression returns a value. Say what value is returned in the below expressions:

arr = [1, 2, 3, 3]  # returns [1, 2, 3, 3]
[1, 2, 3, 3].uniq  # returns [1, 2, 3]
[1, 2, 3, 3].uniq!  # returns [1, 2, 3]

# 4. What's the difference between the map and select methods for the Array class? Give an example of when you'd use one versus the other.

mix_arr = ["Word", 1, "Another word", 2, 3]

# Use select return an array to return an array of items that match the predicate
mix_arr.select{ |e| e.class == Fixnum }

# Use select to return an array of string with "add-on" suffixed to each item from the original array.
p mix_arr.map{ |e| e.to_s + " add-on" }

# 5. Say you wanted to create a Hash. How would you do so if you wanted the hash keys to be String objects instead of symbols?
str_key_hash = {"key" => "value", "another_key" => "value"}

# 6. What is returned?

 x = 1
 x.odd? ? "no way!" : "yes, sir!"

 # "no way!" is returned

# 7. What is x?

x = 1

3.times do
  x += 1
end

puts x

# x is 4


# 8. What is x?

3.times do
  x += 1
end

puts x

# x is 7















