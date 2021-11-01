function task3()
    println("INput row:")
    a = readline()
    words = split(a, " ")
    # println(words)
    min = -1
    n = size(words,1)
    k = 0
    row = ""
    min_word =" "
    for i in 1:n
        if words[i] != ""
            if min == -1
                min = sizeof(words[i])
            end
            k += 1
            r = sizeof(words[i])
            if r < min
                min = r
                min_word = words[i]
            end
        end
    end
    println()
    println("number of words: ", k)
    println()
    println("row:    ", a)
    println()
    println("most small word:  ", min_word)
end

task3() 