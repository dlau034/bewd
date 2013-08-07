class StoryBoard

	@@stories = []

	def self.add_story(story) 
		@@stories << story
	end

	def self.stories
		@@stories.map do |story| 
			"Story: #{story.title}, Category: (#{story.category})"
		end
	end
end
