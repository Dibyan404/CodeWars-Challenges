=begin 
Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside. 
The strings will not be the same length, but they may be empty (length0).

For example:

solution("1", "22") # returns "1221"
solution("22", "1") # returns "1221"
<-1->
def solution(a,b)
    a.length < b.length ? a+b+a:b+a+b
end

<--2-->
def solution(a,b)
    a<b? a+b+a : b+a+b
end

<---3--->
def solution(a,b)
    a,b = [a,b].sort_by(&:size)
end

<----4---->
def solution(a,b)
    s = [a,b].min
    l = [a,b].max
    s+l+s
end

=end
def solution(a, b)
    if a < b
        "#{a}" + "#{b}" + "#{a}"
    else 
        "#{b}" + "#{a}" + "#{b}"
    end
end
puts solution(1,22)
puts solution(22,1)