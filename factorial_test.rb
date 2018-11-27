require 'rspec/autorun'

class Factorial
  def factorial_of(n)
    (1..n).inject(:*)
 end
end

describe Factorial do
  let!(:calculator) { Factorial.new }
  it "finds the factorial of 5" do
    expect(calculator.factorial_of(5)).to eq(120)
  end
  it "finds the factorial of 6" do
    expect(calculator.factorial_of(6)).to eq(720)
  end
end
