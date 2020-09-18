require 'faraday'
require 'json'

module Igotjokes
  class Client
    def self.get_jokes
      url = 'https://api.jokes.one'
      type = ['jod', 'animal', 'blonde', 'knock-knock'].sample
      conn = Faraday.new(url: url) do |build|
        build.request :url_encoded
        build.use Igotjokes::Logs
        build.adapter  Faraday.default_adapter
      end

      response = conn.get('jod') do |req|
        req.params['category'] = type
      end

      data = JSON.parse(response.body)
      jokes = data['contents']['jokes']

      jokes
    end
  end
end
