def one 
    colors = ["Red", "Green", "Blue", "White"]
    input = gets.chomp
#   match = false

#    colors.size.times do |i|
#        if colors[i] == input
#            match = true
#        end
#    end

    return colors.include? input
end

# puts one

def three(elements_nb)
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    new_arr = []
    elements_nb.times do 
        new_arr.push arr[rand(arr.size)]
    end
    return new_arr
end


# puts three(3)

def five 
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    sum = 0
    arr.size.times do |i|
        sum += arr[i]
    end
    return sum
end

# puts five

def six
    arr = [1, 2, 3, 4, 1, 2, 2, 3, 5, 6]
    new_arr = []
    arr.each do |i|
        if arr.include?(arr[i])
        else
            new_arr.push arr[i]
        end
    end
    return new_arr
end

puts six

