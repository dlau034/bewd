#Why use Objects

# Jimmy is a hash

# jimmy = {}
# jimmy[:name] = "Jimmy Mazzy"
# jimmy[:major] = "Math"
# jimmy[:course] = "Math"
# jimmy[:grade]= "A"

# pepe = {}
# pepe[:name]= "Pepe Phaenagrotis"
# pepe[:major] = "Music"
# pepe[:course] = "Math"
# pepe[:grade] = "C"

# edward = {}
# edward[:name] = "Edward Ellis"
# edward[:major] = "Math"
# edward[:course] = "Math"
# edward[:grade] = "C"

# def grade_status(student)
#   if student[:grade] == "F"
#     "failed"
#   elsif student[:major] == student[:course] && student[:grade] >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end

# puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"
# puts "#{pepe[:name]} has #{grade_status(pepe)} #{pepe[:course]}"
# puts "#{edward[:name]} has #{grade_status(edward)} #{edward[:course]}"


#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################

# # How about using a class
# class Student 
# 	# create an object called Student
# 	# Needs to be all caps
#  attr_accessor :name, :major, :course, :grade
# 	# these four are methods
# 	# 8 x methods and 4 instance variables created 
# end

# def grade_status(student)
#  if student.grade == "F"
#    "failed"
#  elsif student.major == student.course && student.grade >= "C"
#    "failed"
#  else
#    "passed"
#  end
# end

# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.major = "Math"
# jimmy.course = "Math"
# jimmy.grade = "A"

# pepe = Student.new
# pepe.name = "Pepe Phaenagrotis"
# pepe.major = "Music"
# pepe.course = "Math"
# pepe.grade = "C"

# edward = Student.new
# edward.name = "Edward Ellis"
# edward.major = "Math"
# edward.course = "Math"
# edward.grade = "C"


# puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"
# puts "#{pepe.name} has #{grade_status(pepe)} #{pepe.course}"
# puts "#{edward.name} has #{grade_status(edward)} #{edward.course}"


#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
# How about adding the grade_status method to our class? 

# class Student
#   attr_accessor :name, :major, :course, :grade

#   def grade_status
#     if @grade == "F"
#       "failed"
#     elsif @major == @course && @grade >= "C"
#       "failed"
#     else
#       "passed"
#     end
#   end
# end

# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.major = "Math"
# jimmy.course = "Math"
# jimmy.grade = "A"

# pepe = Student.new
# pepe.name = "Pepe Phaenagrotis"
# pepe.major = "Music"
# pepe.course = "Math"
# pepe.grade = "C"

# edward = Student.new
# edward.name = "Edward Ellis"
# edward.major = "Math"
# edward.course = "Math"
# edward.grade = "C"


# puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"
# puts "#{pepe.name} has #{pepe.grade_status} #{pepe.course}"
# puts "#{edward.name} has #{edward.grade_status} #{edward.course}"


#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
# One more thing though...We can make this program more efficient with less code. 
# Add the initialize methods along with to_s so that the code below runs correctly.

class Student
  attr_accessor :name, :major, :course, :grade

  def initialize(name, major, course, grade)
  	@name = name 
  	@major = major
  	@course = course
  	@grade = grade
  end

  def grade_status
    if @grade == "F"
      "failed"
    elsif @major == @course && @grade >="C"
      "failed"
    else
      "passed"
    end
  end

  def to_s
  	puts "#{@name} has #{grade_status} #{@course}"
  end	
end

jimmy = Student.new("Jimmy Mazzy", "Math", "Math", "A")
pepe = Student.new("Pepe Phaenagrotis", "Music", "Math", "C")
edward = Student.new("Edward Ellis", "Math", "Math", "C")

puts jimmy
puts pepe
puts edward