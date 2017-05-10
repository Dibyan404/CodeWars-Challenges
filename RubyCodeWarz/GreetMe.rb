=begin
Write a method that takes one argument as name and then greets that name, capitalized and ends with an exclamation point.
Example:
greet("maya") # returns "Hello Maya!"
greet("JACK") # returns "Hello Jack!"

<Other Methods>

<--1-->
def greet(name)
"Hello #{name.capitalize}!"
end

<---2--->
def greet(name)
  "Hello %s!" % name.capitalize
end

<---3--->
def greet(name)
  "Hello " + name.capitalize << '!'
end

<--4-->
def greet(name)
    return "Hello #{name.capitalize[0]}#{name.downcase[1..20]}!"
end
=end


def greet(name)
    name.capitalize!
    "Hello " +name+ "!"
end

puts greet('maya')