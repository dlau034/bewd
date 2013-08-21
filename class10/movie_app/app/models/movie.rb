class Movie < ActiveRecord::Base
	validates_presence_of :title 

	validates_length_of :description, :minimum => 10
end
