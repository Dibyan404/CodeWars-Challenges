=begin
Add the value "codewars" to the websites array.
After your code executes the websites array should == ["codewars"]
The websites array has already been defined for you using the following code:
websites = [] 

-=====Other Methods====-
<----1---->
websites.push("codewars")
<----2---->
pos = websites.length
websites.insert(pos, "codewars")
=end
websites = []
websites << ("codewars")
websites << ("Ruby")
websites << ("Challenges")
puts websites.length

