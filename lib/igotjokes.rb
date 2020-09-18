require_relative "./igotjokes/client"
require_relative "./igotjokes/logs"
require_relative "./igotjokes/version"

module Igotjokes
  class Error < StandardError; end

  class Jokes
    def self.get
      Igotjokes::Client.get_jokes
    end
  end
end
