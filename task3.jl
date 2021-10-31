function task3()
    println("INput row:")
    a = readline()
    words = split(a, " ")
    # println(words)
    min = sizeof(words[1])
    n = size(words,1)
    k = 0
    row = ""
    min_word =" "
    for i in 1:n
        if words[i] != ""
            k += 1
            r = sizeof(words[i])
            if r < min
                min = r
                min_word = word[i]
            end
        end
    end
    println("number of words: ", k)
    println("row:    ", a)
    println("most small word:  ", min_word)
end

task3()