require 'json'
require 'rest-client'
require_relative 'story'

class Remotesource
  def self.get
    res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
    res["hot"].map do |story|
      Story.new story["title"]
    end
  end
end
