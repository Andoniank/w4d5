def unique(array)
    new_arr = []
    array.each do |ele|
        new_arr << ele unless new_arr.include?(ele)
    end
    new_arr
end

def two_sum(array)
    new_arr = []
    array.each_with_index do |ele, i|
        if array.include?(-ele)
            new_arr << [i, array.index(-ele)] unless new_arr.include?([array.index(-ele), i]) || i == array.index(-ele)
        end   
    end
    new_arr
end

#Assume that amout of arrays and elements of arrays are equal
def my_transpose(array)
    new_arr = Array.new(array.length) {Array.new(array.length, 0)}
    (0...array.length).each do |row|
        (0...array.length).each do |col|
            new_arr[col][row] = array[row][col]
        end
    end
    new_arr
end

def stock_picker(array)
    current = array.first #Keep track of element to subtract from
    max = array.first #Store biggest difference
    pos1 = 0 #Going to hold position of day 1 buy of stock...eventual return value
    pos2 = 0 #Going to hold position of day 2 sell fo stock...eventual return value

    (1...array.length).each do |i|
        if (current - array[i]) < 0 && (current - array[i]) < max
            max = (current - array[i])
            if i == 1
                pos1 = (array.index(current))
            else
                pos1 = (array.index(current)) - 1 
            end
            pos2 = i
        else
            current = array[i]
        end
    end
    return [pos1,pos2]
end

# The puzzle begins with the disks stacked on one rod in order of 
# decreasing size, the smallest at the top, thus approximating a 
# conical shape. The objective of the puzzle is to move the entire 
# stack to the last rod, obeying the following rules:

# Only one disk may be moved at a time.

# Each move consists of taking the upper disk from one of the stacks 
# and placing it on top of another stack or on an empty rod.

# No disk may be placed on top of a disk that is smaller than it.

# With 3 disks, the puzzle can be solved in 7 moves. 
# The minimal number of moves required to solve a Tower of Hanoi 
# puzzle is 2n − 1, where n is the number of disks.