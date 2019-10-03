def wtf_pyramid 
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	print ">"
	n = gets.chomp.to_i
	
	while n%2 != 1 
		puts "Choisissez un nombre impair"
		print ">"
		n = gets.chomp.to_i
	
	end

	has = "#"
	es = " "

	i = 1
	puts "Voici la pyramide :"
	while i <= (n + 1) / 2 do 
		((n + 1) / 2 - i).times do 
		print es
		end
		((i - 1) * 2 + 1).times do
		print has
		end 
		puts 
		i = i + 1
	end
	while i < n + 1 do 
		(i - (n + 1) / 2).times do 
		print es
		end
		((n - i) * 2 + 1).times do
		print has
		end
		puts
		i = i + 1
	end


end

wtf_pyramid
