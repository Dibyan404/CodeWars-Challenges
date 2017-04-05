=begin
What's a Symbol?
You can think of a Ruby symbol as a sort of name. It's important to remember that symbols aren't strings:
they're primarily used either as hash keys or for referencing method names.

"string" == :string # false
Above and beyond the different syntax, there's a key behavior of symbols that makes them different from strings: 
while there can be multiple different strings that all have the same value, 
there's only one copy of any particular symbol at a given time.

                           
puts "string".object_id    
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id
Output
13451120
13450900
319368
319368
The .object_id method gets the ID of an object—it's how Ruby knows whether two objects are the exact same object. 
Run the code in the editor to see that the two "strings" are actually different objects, whereas the :symbol is the same object listed twice.


Symbols make good hash keys for a few reasons:

1. They're immutable, meaning they can't be changed once they're created;
2. Only one copy of any symbol exists at a given time, so they save memory;
3. Symbol-as-keys are faster than strings-as-keys because of the above two reasons.

my_first_symbol = :symbolprolo
=end






strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!

symbols = []

strings.each do |s|
        s.downcase
        #s.to_sym 
        #doing this wont work coz This is not an in-place method, so needs to be assigned to a variable, or passed as a argument to a method.
        symbols.push(s.to_sym) # also can be used as .intern produces same result. 
    end

puts symbols


#Create a hash called movies with symbols as keys and strings as values.
movies = {
    :Big_Hero_6 => "Made by disney", # '=>' Hash Rocket 
    :Castle_in_the_sky => "Made by Gulibi Studio", # we can use castle_in_the_sky:"Made by Gulibi Studio" instead of ...
    :HackSaw_Ridge => "One of the best",
    
}
puts movies