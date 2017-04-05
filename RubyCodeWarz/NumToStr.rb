=begin 
We need a function that can transform a number into a string.
-===OTher Methods====-
<----1---->
def numberToString(num)
  return num unless num.is_a? Integer
  return num.to_s
end
<----2--->
    def numberToString(num)
        String(num)
end
<----3---->
    def numberToString(num)
  "%s" % num
end
<----4--->
def numberToString(num)
  "#{num}"
end

=end


def numberToString(num)
     str = num.to_s
     str
end

puts numberToString(34)