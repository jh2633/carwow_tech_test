require 'rspec'
require_relative '../lib/bitmap.rb'

describe Bitmap do
  before(:each) do
    @bitmap = Bitmap.new
    @bitmap.matrix = [["O","O","O"],["O","O","O"]]

  end

  describe 'command I' do
    it 'takes two arguments to mulitply and create a matrix with elements "O"' do
      three_by_two = [["O","O","O"],["O","O","O"]]
      expect(@bitmap.i(3,2)).to eq(three_by_two)
    end
  end

  describe 'command C' do
    it 'clears the matrix, changing all elements to "O" ' do
      three_by_two = [["O","O","O"],["O","O","O"]]
      @bitmap.matrix = [["C","C","C"],["C","C","C"]]
      @bitmap.c
      expect(@bitmap.matrix).to eq(three_by_two)
    end
  end

  describe 'command L' do
    it 'colours a pixel with a designated colour' do
      color_three_by_two = [["C","O","O"],["O","O","O"]]
      @bitmap.l(1,1,"C")
      expect(@bitmap.matrix).to eq(color_three_by_two)
    end
  end

  describe 'command S' do
    it 'returns the matrix in its current form' do
      @bitmap.matrix = [["C","C","C"],["C","C","C"]]
      expect{@bitmap.s}.to output("CCC\n" + "CCC\n").to_stdout
    end
  end
end
