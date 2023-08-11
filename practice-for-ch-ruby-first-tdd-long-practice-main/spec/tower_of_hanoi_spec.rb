require "tower_of_hanoi"
describe TowersOfHanoi do
    subject(:hanoi) {TowersOfHanoi.new()}
    describe "#initialize" do
        context "at start of game" do
            it "start game should equal starting phase of game" do
                expect(hanoi.instance_variable_get(:@game)).to eq([[0, 1, 2], [], []])     #possible error 
            end
        end
    end
    
    describe "#game" do
        it "returns game-state" do
            expect(hanoi.game).to eq(hanoi.instance_variable_get(:@game))
        end
    end

    describe "#move" do
        it "should move piece at end of row to specified row" do
            hanoi.move(0, 2)
            expect(hanoi.game).to eq([[0, 1], [], [2]])
        end
    end

    describe "#won?" do
        context "if game is not won" do
            it "returns false if last array is not equal to original first array" do
                expect(hanoi.won?).to eq(false)
            end
        end
        
        context "if game is won" do
            it "returns true if last array is equal to original first array" do
                hanoi.move(0, 1)
                hanoi.move(0, 1)
                hanoi.move(0, 2)
                hanoi.move(1, 2)
                hanoi.move(1, 2)
                expect(hanoi.won?).to eq(true)
            end
        end
    end
end