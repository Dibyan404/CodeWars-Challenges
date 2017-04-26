=begin
Complete the solution so that it reverses all of the words within the string passed in.
Example:
solution("The greatest victory is that which requires no battle") 
# should return "battle no requires which that is victory greatest The"

<-1->
def solution(sentence)
    sentence.split(' ').reverse * ' '
end
<--2-->
def solution(sentence)
    sentence.reverse.gsub!(/\w+/){|w| w.reverse}
end
<---3--->
def solution(sentence)
    final = []
    sentence.split(" ").each do |x|
        final.unshift(x)
    end
    final.join(" ")
end
<----4---->

def solution(sentence)
    arr = sentence.split(" ")
    arr.reverse!
    out = ""
    l = arr.length
    
    for i in 0...1
        out += arr[i]
        
        if(i!=(l-1))
            out += " "
        end
    end

return out
end
<-----5----->

 solution(sentence)
     result = []
     array = sentence.split(" ")
     sentence_length = array.length
     while 
        result.length < sentence_length 
        result << array.pop
end

    result.join(" ")
end



=end

def solution(sentence)
    
    sentence.downcase!
    text = sentence.split(" ").reverse.join(" ")
    
end

books = "The greatest victory is that which requires no battle"
puts "#{solution(books)}"
