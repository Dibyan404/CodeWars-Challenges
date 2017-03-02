# Define the unique method that removes duplicates
def unique(integers) 
    
  #puts "Enter any array of Integers"
  #while true
    #arr = gets.chomp
    #break if arr.empty?
    #integers << arr
  #end
  
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