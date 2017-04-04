=begin 
Make a simple function called greet that returns the most-famous "hello world!".
Style Points
Sure, this is about as easy as it gets. 
But how clever can you be to create the most creative hello world you can think of? 
What is a "hello world" solution you would want to show your friends?

<Other Methods>
<--1-->

eval 'def greet; ' + %~
 ________________________________________
/           'hello world!'               \
\                                        /
 ----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
~[55..68] + ' ;end'

<---2--->
def greet
  [104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 33].map(&:chr).join('')
end

<--3-->
def greet
  "d0l1r2o3w45 67o8l9l10e11h".split(//).reverse.reject {|c| c.match(/\d/) }.join("") + "!"
end

<---4--->
def greet
  ground_control = ["h", "e", "l", "l", "o"]
  major_tom = ["w", "o", "r", "l", "d"]
  greetings = ground_control.join + " " + major_tom.join + "!"
end
<---5--->
def greet
  [104, 101, 108, 108,
   111,  32, 119, 111,
   114, 108, 100,  33].map{|b| b.chr}.join()
end

<--6-->
def greet(g = 0, o = 0, p = 0)
  greetings = ["hello", "hey", "bye", "see ya", "sup", "later"]
  objects = ["world", "earth", "pluto", "Andromeda", "earth 327", "borg"]
  punctuation = ["!", ".", "-", "?", "!!!", ":", ";"]
  
  return "#{greetings[g]} #{objects[o]}#{punctuation[p]}"
end
<--7-->
def greet
  ["!", "d", "l", "r", "o", "w", " ", "o", "l", "l", "e", "h"].join.reverse
end

<--8-->
def greet
  letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  space = " "
  exclamation = "!"
  hello = "#{letters[7]}#{letters[4]}#{letters[11]}#{letters[11]}#{letters[14]}"
  world = "#{letters[22]}#{letters[14]}#{letters[17]}#{letters[11]}#{letters[3]}"
  hello + space + world + exclamation
end

=end
# Write a function "greet" that returns "hello world!"



def greet 
    "hello world!"
end

puts greet