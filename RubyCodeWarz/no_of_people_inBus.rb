=begin
Number of people in the bus

There is a bus moving in the city, and it takes and drop some people in each bus stop.

You are provided a list (or array in JS) of integer array.
Each integer array has two items which represent number of people get into bus (The first item) and number of people get off the bus (The second item).

The first integer array has 0 number in the second item, since the bus is empty in the first bus stop.

Your task is to return number of people in the bus after the last bus station. Take a look on the test cases :)

Please keep in mind that the test cases ensure that the number of people in the bus is always >= 0. So the return integer can't be negative.
<Other Solutions>

<--1-->

def number(bus_stops)
  passengers = 0
  bus_stops.each do |a,b|
    passengers += a - b
  end
  passengers
end

<--2-->

def number(bus_stops)
  bus_stops.reduce(0) { |k, (on, off)| k + on - off }
end

<--3-->

def number(bus_stops)
  i = 0 
  answer = []
  bus_stops.each do |array| 
  i = ((array[0] + i) - array[1])
  answer << i
end
return answer.last
end

<--4-->

def number(bus_stops)
  onboard = 0
  bus_stops.flatten.each_with_index do |item, i|
     if i.even?
       onboard += item
     elsif i.odd?
       onboard -= item
     end  
  end
  onboard
end

<--5-->
def number(bus_stops)
  on = 0
  off = 0
  
  bus_stops.flatten.each_with_index do |el, idx|
    if idx%2===0
      on+=el
    else
      off+=el
    end
  end
  answer = on-off
  return answer
end

<--6-->
def number(bus_stops)
  a = 0
  bus_stops.to_s.delete("[],").split.map.with_index do |v,i|
    if i % 2 == 0
      a = a - v.to_i
    end
    if i % 2 != 0
      a = a + v.to_i
    end
  end
  return a * -1
end

=end

def number(bus_stops)
  vitra=0
  bahira=0
  i=0
  while i<bus_stops.size
    vitra = vitra + bus_stops[i][0]
    bahira = bahira + bus_stops[i][1]
    i = i + 1 
  end
  vitra - bahira
end

puts number(77)

