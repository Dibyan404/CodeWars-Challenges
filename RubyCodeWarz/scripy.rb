#have your very own method that adds functionality that Ruby didn't have before.

#Building your own methods is great for using code over and over without having to retype things, 
#but it's also great for abstracting or simplifying your program. 
#Once you write alphabetize, you don't ever have to think about how it works—you just call it whenever you need it.

def alphabetize(arr,rev = false) 
    arr.sort! 
end         

def alphabetize(arr,rev = false) #for "reverse", that will default to false if the user doesn't type in two arguments.
    arr.sort! #the exclamation mark means we modify the acutal array
    if rev == true
        arr.reverse  #modifies the acutal array where "reverse" simply returns a reversed array while leaving the original array alone.
    else
        arr.sort!
    end
end
numbers = [2,4,3,5,6]

#puts alphabetize(numbers)
puts "numbers: #{alphabetize(numbers,true)}"
