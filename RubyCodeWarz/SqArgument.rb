=begin
Now you have to write a function called square that takes an argument and returns the square of it.
<-1->
def square num
    num.abs2
end
<--2-->
def square x
 x.times.map {x}.reduce :+
<---3--->
def square(a)
    a ** 2
end

=end
def square(arg)
    arg * arg
end

puts square(5)
    