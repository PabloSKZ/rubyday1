def say_hello(first_name)
    puts "Wesh alors #{first_name}"
end

def ask_name
    puts "C'est quoi ton blaze ??"
    print "> "
    blaze = gets.chomp
    return blaze
end

blaze = ask_name
say_hello(blaze)
