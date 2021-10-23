function task1(arr)
    l = size(arr,1)
    max = arr[1]
    min = arr[1]
    index_max = 1
    index_min = 1
    for i in 1:l
        if arr[i] > max
            max = arr[i]
            index_max = i
            continue
        end
        if arr[i] < min
            min = arr[i]
            index_min = i
            continue
        end
    end
    arr2 = zeros(l-2)
    j = 1
    
    for  i in 1:l
        if i != index_min && i != index_max
            arr2[j] = arr[i]
            j += 1
        end
    end
    return arr2
end


a = [1,20,4,-5,6]
task1(a)