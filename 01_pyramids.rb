def half_pyramid
    puts "Bienvenue dans la pyramide jeune reptilien, combien d'étage veux tu ? "
    print "> "

    stairs_number = gets.chomp.to_i - 1
    j = 1

    while stairs_number >= 0
        stair = ""
        stairs_number.times { |i| stair += " " }
        j.times { |i| stair += "#" } 
        stairs_number -= 1
        j += 1
        puts stair
    end 
end

def full_pyramid
    puts "Bienvenue dans la pyramide jeune reptilien, combien d'étage veux tu ? "
    print "> "

    stairs_number = gets.chomp.to_i - 1
    j = 1

    while stairs_number >= 0
        stair = ""
        stairs_number.times { |i| stair += " " }
        j.times { |i| stair += "#" } 
        if j > 1 
            (j - 1).times { |i| stair += "#" } 
        end  
        stairs_number -= 1
        j += 1
        puts stair
    end 
end

def wtf_pyramid
    puts "Bienvenue dans la pyramide jeune reptilien, combien d'étage veux tu ? "
    print "> "

    stairs_init = gets.chomp.to_i
    stairs_number = stairs_init - 1
    j = 1
    stairs_arr = []

    while stairs_number >= 0
        stair = ""
        stairs_number.times { |i| stair += " " }
        j.times { |i| stair += "#" } 
        if j > 1 
            (j - 1).times { |i| stair += "#" } 
        end  
        stairs_number -= 1
        j += 1
        stairs_arr.push stair
        puts stair
    end 
    for k in (j - 3).downto(0)
        puts stairs_arr[k]
    end
end

wtf_pyramid