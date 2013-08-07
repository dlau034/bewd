class Player 

	attr_accessor :name

	def get_name(name)
		@name = name
		puts "Hello #{name}"
	end
end