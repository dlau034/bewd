class StoryBoard
  @@stories = []

#this is for staging the story
  def self.stories
    @@stories.map do |story|
      "Story Headlines: #{story.title}"
    end
  end


#this is for adding the story to stories array
  def self.add_story(story)
    @@stories << story
  end  

end
