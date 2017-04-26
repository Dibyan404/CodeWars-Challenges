=begin
Implement a method to perform basic string compression using the counts of repeated characters. 
For example, the string aabccccaaa would become a2b1c5a3. 
If the compressed string is smaller than the original string, your method should return the compressed string. 
You can assume the string has only uppercase and lowercase letters (a-z).

Another Method
<-1->
def string_compressor(string)
 string.chars.chunk{|x| x}.map{|x, xx| xx.size > 1 ? "#{x}#{xx.size}" : x}.join
end

<--2-->
def string_compressor(string)
    string.gsub(/(.)\1+/) { |x| "#{Regexp.last_match(1)}#{x.size}" }
end

=end


def string_compressor(string)
 array = []
    compressed_str = ""
    string.chars.each do |c|
        if c == array.last
            array << c
        else
            compressed_str += "#{array.last}#{array.length}" if array.length > 0
            array = [c]
        end
    end

    compressed_str += "#{array.last}#{array.length}"

    if compressed_str.length < string.length
        compressed_str
    else
        string
    end
end

puts string_compressor("aabbccddddA")
puts string_compressor("AAAAVVCCCaaSSS")