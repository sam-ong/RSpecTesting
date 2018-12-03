require "spec_helper"
require "./foo"

RSpec.describe Foo do
  describe "#bar" do
    let(:foo) { described_class.new }
    subject { foo.bar }

    context "the user enters 1" do
      before do
        allow(foo).to receive(:gets).and_return input
      end

      let(:input) { "1" }

      it { is_expected.to eq "1" }
    end

    context "the user enters 1" do
      let(:input) { "1" }

      it "returns the user input" do
        expect(foo).to receive(:gets).and_return input #simulates user inputting value 1
        expect(subject).to eq "1"
        expect(foo).to receive(:gets).and_return "4" #simulates user inputting value 1

        expect(subject).to eq "4"
      end
    end
  end
end
