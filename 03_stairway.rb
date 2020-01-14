def roll_the_dice
    dice = rand(1..6)
    return dice
end

def generate_gap(gap)
    stairs_number = gap
    j = 1

    while stairs_number > 0
        stair = ""
        stairs_number.times { |i| stair += " " }
        j.times { |i| stair += "#" } 
        stairs_number -= 1
        j += 1
        puts stair
    end 
    puts ""
end

def game
    gap = 0
    tour = 0

    while gap < 10
        puts "Lance le dé : [Enter]"
        # gets.chomp
        dice = roll_the_dice
        puts "Tu as fait #{dice} ! \n\n"
    
        if gap < 0
            gap = 0
        end
    
        if dice == 5 || dice ==6
            puts "Tu montes d'une marche :D \n\n"
            gap +=1
            generate_gap(gap)
        elsif dice == 1
            puts "Tu descends d'une marche :( \n\n"
            gap -=1
            generate_gap(gap)
        else 
            puts "Tu restes là où tu es \n\n"
            generate_gap(gap)
        end

        tour += 1
    end
    
    puts "Félicitation ! Tu as gravi toutes les marches en #{tour} tours :D \n\n"

    return tour
end

def average_finish_time
    tours = []

    100.times do
        tours.push game
    end
    average = tours.inject{ |sum, el| sum + el }.to_f / tours.size
    puts "Moyenne de tours des 100 parties : " + average.to_s
end

average_finish_time








