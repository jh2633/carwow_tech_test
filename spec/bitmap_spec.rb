require 'rspec'
require_relative '../lib/bitmap.rb'

describe Bitmap do
  before(:each) do
    @bitmap = Bitmap.new
  end

  describe 'command I' do
    it 'takes two arguments to mulitply and create a matrix with elements "O"' do
      three_by_two = [["O","O","O"],["O","O","O"]]
      expect(@bitmap.i(3,2)).to eq(three_by_two)
    end
  end
end
