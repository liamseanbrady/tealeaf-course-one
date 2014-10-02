require "pry"

local_var = "Hello, world!"
array = [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15]]

def change_local_var(outer_var)
  outer_var.clear
end

def inner_scope
  inner_var = "I am an inner var"
end

array.each do |arr|
  arr.each do |num|
    p arr
    p num
  end
  p arr
  # p num
end

# Can access the arr inside arr.each, but can't access num inside array.each

change_local_var(local_var)
p inner_var

