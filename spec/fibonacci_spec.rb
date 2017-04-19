require 'spec_helper'
require 'fibonacci'

describe 'ArrayMethods::Labs::Fibonacci' do
  let(:fibonacci) {ArrayMethods::Labs::Fibonacci.new}
  let(:fibs){ [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] }

  it "returns the first 10 numbers of the fibonacci sequence' do" do
    expect(fibonacci.fibs).to eq fibs
  end

  describe '#product_of_elements' do
    it 'calculates the product of elements within fibs, excluding 0' do
      expect(fibonacci.product_of_elements).to eq 2227680
    end
  end

  describe '#sum_of_odd_elements' do
    it 'sums the odd elements within fibs' do
      expect(fibonacci.sum_of_odd_elements).to eq 44
    end
  end

  describe '#product_of_even_elements' do
    it 'calculates the product of even elements within fibs' do
      expect(fibonacci.product_of_even_elements).to eq 544
    end
  end


end
