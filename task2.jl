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
                matrix[i] = rand(Int64.(1:m))
            else
                matrix[i] = (k+1)^2
            end
        else
            i -= 1
            k = div(i, m, RoundDown)
            if (k+1) % 2 != 0
                matrix[i] = rand(Int64.(1:m))
            else
                matrix[i] = (k+1)^2
            end
            i+=1
        end
    end
    println()
    if n <= m
        for i in 1:l
            if i%m == 0
                v = i/m
                print(matrix[i])
                print("\n")
                while v != 0
                    print("\t")
                    v -=1
                end
            else
                print(matrix[i])
                print("\t")
            end
        end
    else
        matrix2 = transpose(matrix)
        for i in 1:l
            if i%m == 0
                v = i/m
                print(matrix2[i])
                print("\n")
                while v != 0
                    print("\t")
                    v -=1
                end
            else
                print(matrix2[i])
                print("\t")
            end
        end
    end
    
end

#println(div(1, 3, RoundDown))
task2()