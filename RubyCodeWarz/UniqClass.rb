# Define the unique method that removes duplicates

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
