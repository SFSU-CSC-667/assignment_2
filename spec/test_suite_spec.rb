require 'spec_helper'

describe TestObject do
  let(:test_fill) { 'i' }
  let(:test_size) { 4 }
  let(:test_object) { TestObject.new(test_fill, test_size) }
  
  describe '#new' do
    it 'takes two parameters (a,b)' do
      expect{ TestObject.new(1,3) }.not_to raise_error
    end

    it 'raises when the second parameter is not a number' do
      expect{ TestObject.new('a','b') }.to raise_error(ArgumentError)
    end
  end

  describe '#array' do
    let(:expected_array) { (1..test_size).map{ |i| "#{test_fill}" } }

    it 'returns and array of size b, filled with a' do
      expect(test_object.array).to eq expected_array
    end
  end

  describe '#fill' do
    it 'returns a' do
      expect(test_object.fill).to eq test_fill
    end
  end

  describe '#size' do
    it 'returns b' do
      expect(test_object.size).to eq test_size
    end
  end

  describe '#odd?' do
    let(:odd_object) { TestObject.new(test_fill, 3) }

    it 'returns false when size is even' do
      expect(test_object.odd?).not_to be_nil
      expect(test_object.odd?).to be_false
    end

    it 'returns true when size is odd' do  
      expect(odd_object.odd?).to be_true
    end
  end
end
