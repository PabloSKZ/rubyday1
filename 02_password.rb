def signup
    puts "Définis ton mot de passe : "
    $password = gets.chomp
end

def login
    log = false
    while log == false
        puts "Rentres ton mot de passe :"
        input = gets.chomp
        if $password == input 
            log = true
        end
    end
end

def welcome_screen
    puts "Bienvenue sur la page du projet reptilien"
end

def perform 
    signup
    login
    welcome_screen
end

perform
