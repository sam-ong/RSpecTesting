require 'rspec/autorun'

class Divider
  def divide(a,b)
    a/b
  end
end

describe Divider do
  it "should divide 99 by 11" do
    Calculator = Divider.new
    expect(Calculator.divide(99,11)).to eq(9)
  end
end
