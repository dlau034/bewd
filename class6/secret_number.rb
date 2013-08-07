class Secret_number

	## OUTPUT AND CHECK FOR GUESS COMPARISON
	def self.check_guess(guess, correct_number)
	  if guess === correct_number #use triple === to make sure type is the same (we know it is but this is safer)
	    puts "Correct! Well done."
	    return false
	  elsif guess > correct_number
	    puts "Your number was a bit high."
	    return true
	  elsif guess < correct_number
	    puts "Your number was a bit low."
	    return true
	  else #hmm. This is a catch all. Just to make sure.
	    puts "Somthing went wrong."
	    raise "Something went wrong. (Post the error on the chat board!)" #Give me an error.
	  end
	end
	 
	## MAKE SURE YOU HAVE GUESSES LEFT AND GIVE USER FEEDBACK
	def self.guess_num_check(current_guess, max_guesses)
	  puts current_guess< max_guesses ? "You have #{max_guesses-current_guess} picks left." :  "You're DONE. Sorry!"
	  return current_guess< max_guesses #you don't need the return here. (I use it to be very clear)
	end	

end
