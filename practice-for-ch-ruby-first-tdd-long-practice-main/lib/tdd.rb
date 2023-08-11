def unique(array)
    new_arr = []
    array.each do |ele|
        new_arr << ele unless new_arr.include?(ele)
    end
    new_arr
end