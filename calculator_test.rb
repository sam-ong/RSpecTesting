require 'rspec/autorun'

class Calculator
  def multiply(a,b)
    a*b
  end
  def subtract(a,b)
    a-b
  end
  def add(a,b)
    a+b
  end
  def divide(a,b)
    a/b
  end
  def factorial_of(n)
    (1..n).inject(:*)
  end
end

describe Calculator do
  let(:calculator) { Calculator.new }
  it "should multiply 4 by 20" do
    expect(calculator.multiply(4,20)).to eq(80)
  end
  it "should subtract 140 by 18" do
    expect(calculator.subtract(140, 18)).to eq(122)
  end
  it "should add 54 and 46" do
    expect(calculator.add(54, 46)).to eq(100)
  end
  it "should divide 120 by 3" do
    expect(calculator.divide(120,3)).to eq(40)
  end
  it "should get the factorial of 5" do
    expect(calculator.factorial_of(5)).to eq(120)
  end
end
