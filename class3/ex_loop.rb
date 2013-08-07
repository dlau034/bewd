# Write a program that prints 99 bottles of beer on the wall.

# The song starts with 

# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(


# count = 9

# while count > 1
# 	puts "$ beers left"
# 	count -= 1
# end


###### Beer Exercise ######

###### Doing with a downto, it will need DO END

# def beer_song(num_beer)
# 	num_beer.downto(1) do |num|
# 	    puts "#{num} bottles of beers on the wall"
# 	    puts "#{num} bottles of beers"
# 	    puts "You take one down and pass it around"

# 	    if num > 1
# 	    	puts "#{num - 1} bottles of beers on the wall"
# 	    elsif 
# 	    	puts "No more bottles of beer on the wall :-("
# 		end   
# 		puts
# 	end
# end

# beer_song(10)

###### Doing with a while loop

count = 10
while count > 1
    puts "Looping #{count}"
    count -=1
end