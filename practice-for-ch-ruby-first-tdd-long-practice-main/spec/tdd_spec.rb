require 'tdd'

describe "tdd" do
    describe '#unique' do
        it 'returns unique elements of an array' do
            array = [1, 2, 1, 3, 3]
            expect(unique(array)).to eq([1, 2, 3])
        end
    end
end