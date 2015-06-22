#Game_Methods.rb
module GameMethods
	
	def knock
		knocker = rand(4) + 2
		i =0
		puts `clear`
		while i < knocker	
			puts '

			    __ __ _   ______  ________ __
			   / //_// | / / __ \/ ____/ //_/
	 		  / , < /  |/ / / / / /   / , <   
			 / /| |/ /|  / /_/ / /___/ /| |  
			/_/ |_/_/ |_/\____/\____/_/ |_|  
                                 
			'
			print "\a"
			i +=1
			sleep(0.5)
			puts `clear`
			sleep(0.7)
		end
		knocker
	end
	
	def ask_a_question (prompt, first, second, third,final)
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
			if final
				2
			else
				puts "I don't understand your question. Please try again"
				ask_a_question(prompt, first, second, third, false)
			end
		end
	end

	def check_answer (answer,first,second,third)
		#puts `clear`
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
		puts "
	\r	▄▄▄█████▓ ██░ ██ ▓█████     ██░ ██  ▒█████   █    ██   ██████ ▓█████  ▐██▌ 
	\r	▓  ██▒ ▓▒▓██░ ██▒▓█   ▀    ▓██░ ██▒▒██▒  ██▒ ██  ▓██▒▒██    ▒ ▓█   ▀  ▐██▌ 
	\r	▒ ▓██░ ▒░▒██▀▀██░▒███      ▒██▀▀██░▒██░  ██▒▓██  ▒██░░ ▓██▄   ▒███    ▐██▌ 
	\r	░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄    ░▓█ ░██ ▒██   ██░▓▓█  ░██░  ▒   ██▒▒▓█  ▄  ▓██▒ 
  	\r	  ▒██▒ ░ ░▓█▒░██▓░▒████▒   ░▓█▒░██▓░ ████▓▒░▒▒█████▓ ▒██████▒▒░▒████▒ ▒▄▄  
  	\r	  ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░    ▒ ░░▒░▒░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░░░ ▒░ ░ ░▀▀▒ 
    \r	  ░     ▒ ░▒░ ░ ░ ░  ░    ▒ ░▒░ ░  ░ ▒ ▒░ ░░▒░ ░ ░ ░ ░▒  ░ ░ ░ ░  ░ ░  ░ 
  	\r	  ░       ░  ░░ ░   ░       ░  ░░ ░░ ░ ░ ▒   ░░░ ░ ░ ░  ░  ░     ░       ░ 
    \r  	░  ░  ░   ░  ░    ░  ░  ░    ░ ░     ░           ░     ░  ░ ░    
    \r    	

    \r                    	   Developed By JonComApps™
    \r 	                  Visit us @ JonComApps.com

		"
		Thread.new {
 		 puts `afplay ./Sounds/themeupdate.mp3 -v 0.25 -t 90`
		}
		puts `afplay ./Sounds/bang.mp3`
		puts "Welcome to The House!
		\rYou're home enjoying a lazy Sunday on the couch.
		\rWhen suddenly you hear a knock at the front door.
		\rPress enter to continue"
		puts `afplay ./Sounds/intro.mp3 -v 2`
		cont = gets.chomp
		puts =`clear`
		answer = knock
		puts "You open the door to find the mailman with a strange letter.
		 \rYou wonder why the mailman is here on a sunday... weird.....
		 \rYou open the letter. Guess what? You won a FREE MANSION!
		 \rLucky you!
		 \rAfter taking a moment to get over the initial shock, you realize something.
		 \rThis is Old Man Raferty's mansion. It's HAUNTED!!!!!
		 \rWorse yet, in order to claim your prize, you have to stay there over night!"
		 puts `afplay ./Sounds/firstquestion.mp3 -v 2`
		answer
		
	end

	def tell_story(section)
		if section == "first"
			puts "You get to the mansion and find the door unlocked. You open it
			\rand hear a faint scream in the background. Is someone in danger?"
			puts `afplay ./Sounds/secondquestion.mp3 -v 2`
		else
			puts "You frantically search for the troubled stranger. After dodging
			\rcobwebs you hear the scream again. It's behind the door next to you!
			\rYou bust down the door and find the stranger!!! 
			\rThe stranger is being attacked by a troll!
			\rThe troll turns to you and says:
			\rTroll:     ''If you can tell me how many times I knocked on your door,
			\r             I'll let you both go and will give you the deed to the mansion!''"
			puts `afplay ./Sounds/thirdquestion.mp3  -v 2`
		end
	end

	def ending (answer)
		if answer == 1
			puts "The Troll is astonished that you paid attention!
			\rTroll:     ''As promised, here's the deed and I shall let you both free!''
			\rStranger:  ''Thank you for saving my life! Here's $100. Buy your self
			\r             something nice!''
			\rGOOD JOB!!!!\n\n\n"
			puts `afplay ./Sounds/win.mp3 -v 2`
			win(true)
		else
			puts "Troll:     ''YOU LOSE!!''
			\rThe troll runs off into the night and now your trapped in the room.
			\rNow you and the stranger must wait till the next contestant plays
			\rthe trolls game. Hopefully the next person pays more attention!\n\n\n"
			puts `afplay ./Sounds/youlose.mp3 -v 2`
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
