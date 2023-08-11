class TowersOfHanoi
    attr_reader :game

    def initialize
        @game = [[0, 1, 2], [], []]
    end

    def move(start, finish)
        disk = self.game[start].pop
        self.game[finish].push(disk)
    end

    def won?
        
    end
end