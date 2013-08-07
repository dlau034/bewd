class Game 

	attr_accessor :name

	# def initialize 

	# end

	def run_game(name)
		# #Sets
		@name = name

		max_guesses = 3
		correct_number = rand(1..10)

		#defaulting

		current_guess = 0
		begin
		  print "Guess a number between 1 and 10! --> "
		  num = gets.chomp.to_i
		end while Secret_number.check_guess(num,correct_number) && Secret_number.guess_num_check(current_guess +=1, max_guesses)
		 
		line = '----------'
		puts "#{line}\nGoodbye #{name}.\n#{line}\nThe number was #{correct_number}\n#{line}"
	end
end




