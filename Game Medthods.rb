#Game_Medthods.rb
module GameMethods
def ask_a_question (prompt, first, second, third)
	puts "*"*80
	puts prompt
	answer = gets.chomp
	answer.downcase!
	case answer
	when first
		1
	when second
		2
	when third
		3
	else
		puts "I don't understand your question. Please try again"
		ask_a_question(prompt, first, second, third)
	end
end

def check_answer (answer,first,second,third)
	puts `clear`
	case answer
	when 1
		puts first
	when 2
		puts second
	else 3
		puts third
	end
end

def introduction
	puts `clear`
	puts '
___________.__               ________                       
\\__    ___/|  |__   ____    /  _____/_____    _____   ____  
  |    |   |  |  \\_/ __ \\  /   \\  ___\\__  \\  /     \\_/ __ \\ 
  |    |   |   Y  \\  ___/  \\    \\_\\  \\/ __ \\|  Y Y  \\  ___/ 
  |____|   |___|  /\\___  >  \\______  (____  /__|_|  /\\___  >
                \\/     \\/          \\/     \\/      \\/     \\/ 

'


	puts "You check your mail and find a strange letter.
	\rYou usually wouldn't open such a letter but this one is different.
	\rYou open the letter. Guess what? You won a FREE MANSION!
	\rLuck you!
	\rAfter taking a moment to get over the initial shock, you realize something.
	\rThis is Old Man Raferty's mansion. It's HAUNTED!!!!!
	\rWorse yet, in order to claim your prize, you have to stay there over night!"
end

def tell_story(section)
	if section == "first"
		puts "You get to the mansion and find the door unlocked. You open it
		\r and hear a faint scream in the background. Is someone in danger?"
	else
		puts "You frantically search for the troubled stranger. After dodging
		\rcobwebs you hear the scream again. It's behind the door next to you!
		\rYou bust down the door and find the stranger!!! 
		\rIt's your old Highschool bully and their is a scary monster attacking him!"
	end
end

def ending (answer)
	case answer
	when 1
		puts "Good choice! Turns out the bully is the deed owner of the mansion! 
		\rHe's so thankful for your help that he hands over the deed to the mansion 
		\ron the spot!
		\rYOU WIN! The End!\n\n\n"
		win(true)
	when 2
		puts "The monster ran away in fear! 
		\rTurns out the bully is the deed owner of the mansion! 
		\rHe's so thankful for your help that he hands over the deed to the mansion 
		\ron the spot!
		\rYOU WIN! The End!\n\n\n"
		win(true)
	when 3
		puts "Turns out the bully is actually the deed owner to the mansion
		\rSince you killed him, you lose the mansion and now you're in jail.
		\rThe moral of the story is forgiveness.. Or something touching.. I dunno..
		\rThe End! YOU LOSE, GOOD DAY SIR!\n\n\n"
		win(false)
	end
end

def win(won)

	if won
		puts '

 		 _  _  _____  __  __    _    _  ____  _  _ 
		( \/ )(  _  )(  )(  )  ( \/\/ )(_  _)( \( )
		 \  /  )(_)(  )(__)(    )    (  _)(_  )  ( 
 		 (__) (_____)(______)  (__/\__)(____)(_)\_)

		'

		puts " "
		puts " "
		puts " "
		i=1
		while i < 4
			print "     .\n"
			sleep(0.25)
			print "\r\e[A\e[K     |\n\n"
			sleep(0.25)
			print "\r\e[A\e[A\e[K"
			print "\r\e[A     |\n\n\n"
			sleep(0.25)
			print "\r\e[A\e[A\e[A\e[K"
			print "\r\e[A     |\n\n\n\n"
			sleep(0.25)
			print "\r\e[A\e[A\e[A\e[A\e[K"
			print "\r\e[A     *\n\n\n\n"
			print "\r\e[A\e[A\e[A\e[A\e[A    \\|/ \n    - - \n    /|\\ \n\n\n\n\n"
			sleep(0.25)
			print "\r\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[A   \\|||/ \n   -   -  \n   -   -\n   /|||\\ \n\n\n\n"
			sleep(0.25)
			print "\r\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[K\n\e[K\n\e[K\n\e[K\n \n"
			i+=1
		end
	else
		puts '
		 _  _  _____  __  __    __    _____  ___  ____ /\
		( \/ )(  _  )(  )(  )  (  )  (  _  )/ __)( ___))(
 		 \  /  )(_)(  )(__)(    )(__  )(_)( \__ \ )__) \/
 		 (__) (_____)(______)  (____)(_____)(___/(____)()

			'
	end

end

end	
