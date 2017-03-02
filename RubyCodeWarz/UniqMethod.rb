=begin
Remove Duplicates
You are to write a function called unique that takes an array of integers and returns the array with duplicates removed. 
It must return the values in the same order as first seen in the given array. 
Thus no sorting should be done, if 52 appears before 10 in the given array then it should also be that 52 appears before 10 in the returned array.

Assumptions
All values given are integers (they can be positive or negative).
You are given an array but it may be empty.
They array may have duplicates or it may not.
You cannot use the uniq method on Arrays (don't even try it), or the nub function from Data.List.
-====With the use of class====-

class Codewarz
  
    def initialize(integers)
      @integers = integers 
    end
    
    def unique
      puts "Enter array of Integers"
      while true
        arr = gets.chomp
        break if arr.empty?
        @integers << arr
      end
      duplicate
    end
    
    def duplicate
        ar = Array.new
        @integers.each do |n|
          ar << n unless ar.include?(n)
        end
        puts "#{ar}"
    end
end


input = Codewarz.new([])
input.unique.inspect

=end

def unique(integers) 
  ar = Array.new
  integers.each do |n|
    ar << n unless ar.include?(n)
  end
  ar
  
end

puts unique([5,3,2,1,5,6]).inspect
puts unique([]).inspect
puts unique([5, 2, 1, 3]).inspect
puts unique([1, 5, 2, 0, 2, -3, 1, 10]).inspect