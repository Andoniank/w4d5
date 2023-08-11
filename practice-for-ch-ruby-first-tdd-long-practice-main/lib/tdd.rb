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