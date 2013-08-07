class Person 
	attr_accessor :first_name, :last_name

	@@all_names = ['john','tim','jae','kim']

	@@total_names = []

	def self.all_names
		@@all_names
	end

	def self.all_names=(array=[])
		@@all_names = array
	end


	def self.total_names 
		@@total_names
	end


	# def Person.enter_detail(name, gender)
	# 	name = self.new(name)
	# 	name.gender = gender
	# 	return name 
	# end

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
		@@total_names << self


	end
	def get_full_name
		puts "#{first_name} #{last_name}"
	end
end


puts Person.all_names.inspect
# person1 = Person.new

# Person.enter_detail("david","male")

puts Person.total_names.inspect
