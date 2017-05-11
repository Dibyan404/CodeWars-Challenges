=begin
Complete the squareSum method so that it squares each number passed into it and then sums the results together.

For example:
squareSum([1, 2, 2]) # should return 9

<Other Methods>
<-1->
def squareSum(numbers) #inject can used to sum an enumerable or get the product of it.
  numbers.inject(0) { |sum, elem| sum + elem * elem }
end

<--2-->
def squareSum(numbers) #.map allows us to run an operation on each of our array's objects and return them all in the same place.
  numbers.map{|a| a**2}.reduce(:+) #it allows you to transform a series of items to anything you like!
end

<---3--->
def squareSum(numbers) #combines all elements of enum by applying a binary operation. specified by a block or a symbol that names a method or operator
  numbers.reduce(0) { |acc, x| acc + x*x }
end

<----4---->
def squareSum(num)
sum = 0
for n in num
sum += (n * n)
end 
return sum
end

<-----5----->
def squareSum(numbers)
  numbers.map {|n| n*n}.reduce(:+)
end

=end
def squareSum(numbers)
    sum = 0
    numbers.each do |num|
        sum += num**2
    end 
    sum
end

puts squareSum [1,2,2]
