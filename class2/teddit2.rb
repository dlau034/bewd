# puts 'Welcome to Teddit! Everyone\'s favorite!'
# puts 'Cat jumps out of the box! Upvotes: 9001'

##############
# Method One #
##############

# upvotes = 9001

# puts upvotes
# puts 'Welcome to Teddit! Everyone\'s favorite!'
# puts 'Cat jumps out of the box! Upvotes:' + upvotes.to_s

################################
# Method Two - making a method #
################################

# def display_title(title) 	
# 	puts title
# end	

# def display_story(story,upvotes) 	
# 	puts "#{story} upvote: #{upvotes}"
# end	

# title = 'Welcome to Teddit! Everyone\'s favorite!' 
# story = 'Cat jumps out of the box!'


# display_title(title)
# display_story(story, upvotes)

# def display_story(upvotes) 	
# 	puts "The upvote of this story is #{upvotes}"
# end	

################################

# upvotes = 1

# puts "Enter in story"
# story = gets.chomp

# if story.include?("cats")
# 	upvotes = upvotes * 3
# end	

# if story.include?("bacon")
# 	upvotes = upvotes * 8
# end	

# if story.include?("food")
# 	upvotes = upvotes * 5
# end	


# display_story(upvotes)

#################################

# puts "#{title}"
# puts "#{story}\nUpvotes:\t#{upvotes}" 

##############
#  Exercise  #
##############

# puts "Wecome to Teddit!"
# puts "Please enter a news story:"
# title = gets.chomp
# puts "Please give it a Category:"
# category = gets.chomp

# puts "New Story added!"
# puts "The title of the story is #{title} and the category is #{category}"

# puts "Please enter a second title"
# titleTwo = gets.chomp

# while titleTwo == ""
# 	puts "get out"
# end	

##########################
#  Conditonal Logic Lab  #
##########################

# create the array
stories_array = []

# get the values from user
puts "Enter your title"
title = gets.chomp 

puts "Enter your category"
category = gets.chomp 

puts "Enter your upvotes"
upvotes = gets.chomp 

# create the hash
# story_hash = {}

# put values into hash with key
stories_array = [{:title_key => title, :category_key => category, :upvotes_key => upvotes}]

# stories_array << story_hash

puts stories_array.class		

# puts out the string
puts "title: #{title}, category: #{category}, upvotes: #{upvotes}" 



 





