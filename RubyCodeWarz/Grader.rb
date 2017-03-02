=begin 
Create a function that takes a number as an argument and returns a grade based on that number.
Score Grade
Anything greater than 1 or less than 0.6	'F'
0.9 or greater	"A"
0.8 or greater	"B"
0.7 or greater	"C"
0.6 or greater	"D"

-===Other Methods====-
<----1--->
def grader(score)
  case score
    when 0.6...0.7 then "D"
    when 0.7...0.8 then "C"
    when 0.8...0.9 then "B"
    when 0.9..1 then "A"
    else "F"
  end
end
<----2---->
def grader(score)
  score > 1 || score < 0.6 ? 'F' :
    score >= 0.9 ? 'A' :
      score >= 0.8 ? 'B' :
        score >= 0.7 ? 'C' :
          score >= 0.6 ? 'D' :
            'F'
end
<-----3---->
def grader(score)
  {0.9..1    => 'A',
   0.8...0.9 => 'B',
   0.7...0.8 => 'C',
   0.6...0.7 => 'D'
  }.find{|k,v| break v if k.cover?(score)} || 'F'
end
<----4---->
def grader(score)
  return 'F' if score > 1 || score < 0.6
 
  %w(A D C B A)[score * 10 % 5]
end


=end

def grader(score)
    if score > 1
        "F"
    elsif score >= 0.9
        "A"
    elsif score >= 0.8
        "B"
    elsif score >= 0.7
        "C"
    elsif score >= 0.6
        "D"
    else
        "F"
    end
end

puts grader(0.5)