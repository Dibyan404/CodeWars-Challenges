=begin
You are going to be given a word. 
Your job is to return the middle character of the word.
If the word's length is odd, return the middle character.
If the word's length is even, return the middle 2 characters.
Examples:
Kata.getMiddle("test") should return "es"
Kata.getMiddle("testing") should return "t"
-====Other Methods====-
<---1---->
def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end
<----2---->
def get_middle(s)
  s=s.split('')
  until s.size == 2 || s.size == 1
    s.shift && s.pop
  end
  s.join('')
end
<---3--->
def get_middle(s)
  characters = s.chars
  even_ending_index = s.length/2
  even_starting_index = even_ending_index-1
  odd_index = (s.length-1)/2
  middle_numbers = []

  if s.length == 1
    return s
  elsif s.length.odd? 
    middle_numbers << characters[odd_index]
  else s.length.even?
    middle_numbers << characters[even_starting_index] 
    middle_numbers << characters[even_ending_index]
  end
  return middle_numbers.join
end
<----4---->

def get_middle(s)
  if s.length % 2 == 0 
    s.split("")[((s.length/2)-1)..(s.length/2)].join
  else
    s.split("")[s.length/2]
  end
end
<----5---->
def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end
<-----6----->
def get_middle(s)
  mid = (s.length - 1) / 2
  s.length.odd? ? s[mid] : s[mid..mid+1]
end

=end

def get_middle(s)
  l = s.length/2
  if s.length.even?
    s[l-1] + s[l]
  else
   s[l]
  end
end
puts get_middle("testing")
puts get_middle("test")