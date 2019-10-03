#2.1.3
def ask_first_name
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp
  return first_name
end

def hello(first_name)
  puts "Bonjour, #{first_name} :) !"
end

def say_hello
  first_name = ask_first_name
  hello(first_name)
end

say_hello