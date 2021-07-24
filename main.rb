def bsearch(array, target)
    if array.length == 1 && array[0] == target
        return 1
    elsif array.length == 1 && array[0] != target
        return nil
    end
    index = 0
    sorted_array = array.sort
    if sorted_array[array.length / 2] == target
        index += array.length / 2
        return index
    elsif sorted_array[array.length / 2] < target
        if bsearch(sorted_array[(array.length / 2) + 1..-1], target) == nil
            return nil
        else
            index += array.length / 2
            index += bsearch(sorted_array[(array.length / 2) + 1..-1], target) + 1
            return index
        end
    else
        if bsearch(sorted_array[0...(array.length / 2)], target) == nil
            return nil
        else
            index += array.length / 2
            index -= bsearch(sorted_array[0...(array.length / 2)], target)
        end
    end
end
