class TowersOfHanoi
    attr_reader :game

    def initialize
        @game = [[0, 1, 2], [], []]
    end

    def move(start, finish)
        disk = self.game[start].pop
        raise "Can't move from empty pile" if disk.nil?
        self.game[finish].push(disk)
    end

    def won?
        return true if self.game == [[], [], [0,1,2]]
        false
    end
end