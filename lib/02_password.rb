def sign_up
    puts "Définissez un mot de passe ?"
    password = gets.chomp
    return password
end

def login
  puts "Entrez votre mot de passe"
  password2 = gets.chomp
  return password2
end

def welcome_screen(a,b)
     while  a != b do
    puts "Mot de passe incorrect, réessayez !"
    b = gets.chomp
  end
    puts "Bienvenue dans votre espace secret !" 
end

def perform
    welcome_screen(sign_up, login)
end
perform