=begin
Write a function, calculateTip(amount, rating) which calculates how much you need to tip based on the total amount of the bill and the service.

You need to consider the following ratings:

Terrible: tip 0%
Poor: tip 5%
Good: tip 10%
Great: tip 15%
Excellent: tip 20%
The rating is case insensitive. If an unrecognised rating is input, then you need to return:

"Rating not recognised" in Javascript, Python and Ruby...
...or null in Java
Because you're a nice person, you always round up the tip, regardless of the service.

<Other Methods>

<-1->
def calculate_tip(amount, rating)
  rate = %w(terrible poor good great excellent).index(rating.downcase)
  return 'Rating not recognised' unless rate

  (amount * rate * 0.05).ceil
end
<--2-->
TIP_FRACTIONS = {
  terrible: 0.0,
  poor: 0.05,
  good: 0.1,
  great: 0.15,
  excellent: 0.2
}

def calculate_tip(amount, rating)
  figure_tip = -> (frac) { (amount * frac).ceil }
  rating_key = rating.downcase.to_sym
  
  if TIP_FRACTIONS.has_key?(rating_key)
    figure_tip.call(TIP_FRACTIONS[rating_key])
  else
    'Rating not recognised'
  end
end

<---3--->
def calculate_tip(amount, rating)
  case rating.downcase
    when "terrible"
      (amount * 0).ceil
    when "poor"
      (amount * 0.05).ceil
    when "good"
      (amount * 0.10).ceil
    when "great"
      (amount * 0.15).ceil
    when "excellent"
      (amount * 0.2).ceil
    else
      "Rating not recognised"
  end
end

<----4---->

def calculate_tip(amount, rating)
  tips = { 'terrible' => 0, 'poor' => 0.05, 'good' => 0.1, 'great' => 0.15, 'excellent' => 0.2 }
  return 'Rating not recognised' unless tips.keys.include? rating.downcase
 (amount * tips[rating.downcase]).ceil
end

<-----5----->
ef calculate_tip(amount, rating)
  (i = ["terrible","poor","good","great","excellent"].index(rating.downcase)).nil? ? 'Rating not recognised' : (amount*(i*5.0)/100).ceil
end

=end
def calculate_tip(amount, rating)
  rating.downcase!
   if rating == "terrible"
     (0 * amount).ceil
     
    elsif rating == "poor"
      (0.05 * amount).ceil
      
      elsif rating == "good"
        (0.1 * amount).ceil
        
        elsif rating == "great"
          (0.15 * amount).ceil
          
          elsif rating == "excellent"
            (0.2 * amount).ceil
            
            else
              "Rating not recognised"
            end
        
            
end

puts calculate_tip(30, "poor")
puts calculate_tip(20, "Excellent")
puts calculate_tip(20, "hi")
puts calculate_tip(107.65, "GReat")
puts calculate_tip(20, "great!")

  