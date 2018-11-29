require "spec_helper"
require_relative "../test"

RSpec.describe Test do
  describe "#method" do
    context "the spec setup" do
      it "runs a test" do
        expect(1).not_to be_nil
      end
    end
  end

  describe "#one" do
    it "returns one" do
      expect(Test.new.one).to eq 1
    end
  end

  describe "#foo" do
    subject { Test.new.foo(value) }
    let(:value) {}

    context "value is 1" do
      let(:value) { 1 }
      it "is bar" do
        expect(subject).to eq "bar"
      end
    end
    context "value is not 1" do
      let(:value) { nil }
      it "is baz" do
        expect(subject).to eq "baz"
      end
    end
  end


end
