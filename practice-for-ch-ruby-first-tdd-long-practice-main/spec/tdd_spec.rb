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

    describe "#my_transpose" do
        it "convert between row oriented and column oriented representations" do
            array = [
                [1,2,3],
                [4,5,6],
                [7,8,9]
            ]
            expect(my_transpose(array)).to eq([ 
                [1,4,7],
                [2,5,8],
                [3,6,9]
                ])
        end
    end

    describe "#stock_picker" do 
        it "Returns most profitable pair of days on which to first buy
        the stock and then to sell the stock" do
            array = [3, 300, 15, 60, 100, 157]
            expect(stock_picker(array)).to eq([0,1])
        end
    end
end