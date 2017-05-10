=begin
Complete the bool_to_word (Javascript: boolToWord ) method.
Given: a boolean value
Return: a 'Yes' string for true and a 'No' string for false
-===Other Methods===-
<-------1------>
def bool_to_word bool
   !!bool ? "Yes" : "No"
end

<--------2-------->
def bool_to_word bool
  'Yes' || 'No'
end

<------3------->
class TrueClass
  def to_word
    'Yes'
  end
end

class FalseClass
  def to_word
    'No'
  end
end
  
def bool_to_word bool
  bool.to_word
end


=end



def bool_to_word(bool)
    if bool == true
        "yes"
    else
        "no"
    end
end


puts bool_to_word true