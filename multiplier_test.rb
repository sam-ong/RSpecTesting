require 'rspec/autorun'

class Multiplier
  def multiply(a,b)
    a*b
  end
end

describe Multiplier do
  it "multiplies 4 and 5" do
    calculator = Multiplier.new
    expect(calculator.multiply(4,5)).to eq(20)
  end
end
