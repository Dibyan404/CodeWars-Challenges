=begin
Sum Array
Write a method sum (sum_array in python) that takes an array of numbers and returns the sum of the numbers. 
These may be integers or decimals for Ruby and any instance of Num for Haskell. The numbers can also be negative.
If the array does not contain any numbers then you should return 0.
Assumptions
You can assume that you are only given numbers.
You cannot assume the size of the array.
You can assume that you do get an array and if the array is empty, return 0.

-====Other Methods====-
<-------1----->
def sum(numbers)
  numbers.push(0)
  numbers.reduce(:+)
end
<-----2------->
def sum(a) a!=[] ? a.inject(:+) : 0 end
=end

def sum(numbers)
    0 if numbers.length < 1
    x = 0
    numbers.each{ |num|
        x += num
    }
    x
end
puts sum([-1,0.3,-5,6,3])
puts sum([0.1,0.2,0.4,0.6])
puts sum([1,5.2,4,0,-1])
puts sum([])


