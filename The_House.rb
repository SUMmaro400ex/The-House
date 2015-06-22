#The_House.rb
require "./Game_Methods.rb"
include GameMethods


winningNumber = introduction.to_s
answer = ask_a_question("Do you claim your prize? Yes, No, Maybe","yes","no","maybe",false)
puts`clear`
check_answer(answer,"Good. You're brave", "Its a FREE MANSION. You're claiming it!", "I'll take that as a yes")
tell_story("first")
answer = ask_a_question("Do you look for the troubled stranger? Yes or No","yes","no",nil,false)
puts`clear`
check_answer(answer,"What a good samaritan you are!", "Come on. They could be in danger!","")
tell_story("second")
answer = ask_a_question("Well, how many knocks was it?", winningNumber,nil,nil, true)
puts`clear`
check_answer(answer,"Correct!", "WRONG!","")
ending(answer)