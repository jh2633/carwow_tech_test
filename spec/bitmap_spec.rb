require 'rspec'
require '../lib/bitmap.rb'

describe Bitmap do
  before(:each) do
    @bitmap = Bitmap.new
  end

  describe 'command I' do
    it 'takes two arguments to mulitply and create a matrix with elements "O"' do
      two_by_two = [["O","O"]["O","O"]]
      expect (@bitmap.i(2,2)).to eq(two_by_two)
    end
  end
end
