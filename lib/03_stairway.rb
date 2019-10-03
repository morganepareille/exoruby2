require 'io/console'

def continue
	puts
    puts "Si vous voulez vous arrêter, appuyer sur z, autrement appuyer sur n'importe quelle touche pour continuer"
      case $stdin.getch
      when 'z'    then exit
    end
    end

puts "C'est parti !"
puts "Vous êtes en bas d'un escalier de 10 marches, lançez le dé"
$v = 0 #chiffre du dé
$n = 0 #a quel niveau je suis
$m = 0 #je monte/je descends/je reste sur place

while $n < 10
$v = rand(1..6)
puts "Votre dé affiche #{$v}"
  if $v > 4
   $m = 1
    $n = $n + $m
    puts "Vous montez d'une marche"
    print "> vous êtes à la marche n°#{$n}"
   
  elsif $v > 1
    $m = 0
    puts "Vous restez sur la même marche"
    print "> vous êtes à la marche n°#{$n}"
    
  else
    $m = -1 
    if $n > 0
    	 $n = $n + $m
    puts "Vous descendez d'une marche"
    print "> vous êtes à la marche n°#{$n}"
  
  else
  puts "Vous êtes déjà à la marche la plus basse."
  end 
    
  end

  continue 


end
puts "Vous êtes au niveau 10 !"
puts "Vous avez GAGNÉ !!!!!"