require 'tdd'

describe "tdd" do
    describe '#unique' do
        it 'returns unique elements of an array' do
            array = [1, 2, 1, 3, 3]
            expect(unique(array)).to eq([1, 2, 3])
        end
    end

    describe "#two_sum" do
        it 'returns indexes of elements that sum to zero' do
            array = [-1, 0, 2, -2, 1]
            expect(two_sum(array)).to eq([[0, 4], [2, 3]])
        end
    end
end