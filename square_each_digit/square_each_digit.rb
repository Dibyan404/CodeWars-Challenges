=begin
Square Each Digits
Given a number, write a method called square_each_digit to find out the square of each digit of the input. 
If the input is not a number, the program should return "NaN".
For example, 3211 should turn into 9411, 654326 to 3625169436, and "hello" should return "NaN".
=end


def square_each_digit num
  Integer === num ? num.to_s.split('').map { |n| n.to_i ** 2 }.join("").to_i : "NaN"
end

puts square_each_digit 3211
puts square_each_digit "Ruby is Awesome"
puts square_each_digit 654326


describe "#square_each_digit" do
  context "it is a number" do
    it "returns square of each digit" do
      expect(square_each_digit(3211)).to eq(9411)
      expect(square_each_digit(654326)).to eq(3625169436)
      expect(square_each_digit(1111)).to eq(1111)
    end
  end

  context "it is not a number" do
    it "returns NaN" do
      expect(square_each_digit("hello")).to eq("NaN")
      expect(square_each_digit("12hello")).to eq("NaN")
    end
  end
end