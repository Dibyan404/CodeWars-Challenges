=begin
This function has to be called multiply and needs to take two numbers as arguments, and has to return the multiplication of the two arguments.
<-1->
def multiply(a,b)
  raise ArgumentError, 'arguments must be a numbers' unless a.is_a?(Integer) and b.is_a?(Integer)
  a*b
end

<--2-->
def multiply (*args)
  args.inject(1) {|s, i| s*i}
end
<---3--->
def multiply(*nums)
  nums.reduce(1, :*)
end

<----4---->
def multiply(a,b)
  num = 0
  for i in 1..b
    num+=a
  end
  num
end

<-----5----->
def multiply(a, b)
  raise ArgumentError, "must be numbers" unless a.is_a?(Integer) && b.is_a?(Integer)

a * b
end


=end
# Write here your "multiply"-function


def multiply(num1,num2)
    num1 * num2 
end

puts multiply(3,6)
