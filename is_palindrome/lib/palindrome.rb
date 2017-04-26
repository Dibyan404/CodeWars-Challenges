=begin
Check Palindrome
Given a string, write a method called is_palindrome? to check if it is a palindrome. 
A palindrome is a word or phrase that is the same read from the front and backwards (for example, "racecar", "eve"). 
The palindrome does not need to be limited to words in the dictionary (strings like "eyebeye", "bsdfdsb" should be considered palindromes).
Make sure that the method works regardless of capitalization.
=end

def is_palindrome?(string)
  string.downcase! 
  string == string.reverse ? true : false
end