require_relative 'story' #creates a link to the Story class.
require_relative 'story_board' #creates a link to the StoryBoard class.
require_relative 'remote_nytimes' #creates a link to RemoteSource class
require_relative 'remote_source' #creates a link to RemoteSource class

class App

  def show_menu
    puts "Would you like to:"
    puts "1. Get News from Mashable"
    puts "2. Get News from New York Times"
    puts "3. Exit"
  end

  # Gets mashable stories

  def add_remote_stories
    Remotesource.get.each do |story|
      StoryBoard.add_story story #adds story to an array of stories.
    end
  end

# Gets NYTIMES

  def add_remote_stories_nytimes
    RemoteNytimes.get.each do |story|
      StoryBoard.add_story story #adds story to an array of stories.
    end
  end

  def show_story_board
    StoryBoard.stories.each do |story| #StoryBorad.stories returns an array of stories
      puts story 
    end
  end

  def launch

    puts "Welcome to NewsReader!"
    show_menu

    loop do

      choice = gets.chomp.to_i

      if choice == 1 #Mashable
        add_remote_stories
        show_story_board
        show_menu
      elsif choice == 2 #New York times
        add_remote_stories_nytimes
        show_story_board
        show_menu        
      elsif choice ==  3
        break
      else
        puts "That's not one of the selections - Try Again!"
        show_menu
      end
    end

    puts "You have quit the NewsReader - Goodbye!"

  end  

end

