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