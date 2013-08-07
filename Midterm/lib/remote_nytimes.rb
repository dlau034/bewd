require 'json'
require 'rest-client'

require_relative 'story'

class RemoteNytimes
  def self.get
    res = JSON.load(RestClient.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/international/1.json?&offset=0&api-key=8e13411e5c47a8593e2728d9566c304f:16:67958119'))
    res["results"][0..9].map do |child|
      Story.new child["title"]
    end
  end
end


