function task2()
    println("input n:")
    n = parse(Int64, readline())
    println("input m:")
    m = parse(Int64, readline())
    l = m*n
    matrix = zeros(Int64, n, m)
    for i in 1:l
        if i % m != 0
            k = div(i, m, RoundDown)
            if (k+1) % 2 != 0
                matrix[i] = rand(Int64.(1:24))
            else
                matrix[i] = (k+1)^2
            end
        else
            i -= 1
            k = div(i, m, RoundDown)
            if (k+1) % 2 != 0
                matrix[i] = rand(Int64.(1:24))
            else
                matrix[i] = (k+1)^2
            end
            i+=1
        end
    end
    if n < m
        matrix2 = transpose(matrix)
        l2 = size(matrix2,1)
        for i in 1:l2
            if i % n != 0
                print(matrix2[i], "  ")
            else
                print("\t")
                print("\n")
            end
        end
    end
end

#println(div(1, 3, RoundDown))
task2()