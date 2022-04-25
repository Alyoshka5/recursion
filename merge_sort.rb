def merge_sort(arr)
    if arr.length <= 1
        return arr
    end

    left = merge_sort(arr[0..(arr.length / 2)-1])
    right = merge_sort(arr[(arr.length / 2)..-1])

    merged = []
    until merged.length == arr.length do
        if right.length == 0
            merged << left.shift
        elsif left.length == 0
            merged << right.shift
        else
            if left[0] <= right[0]
                merged << left.shift
            else
                merged << right.shift
            end
        end
    end
    merged
end

p merge_sort([4, 2, 8, 9, 1, 5, 6])

