require 'logger'

module Igotjokes
  class Logs
        
    def initialize(app)
      @app = app
      @logger = Logger.new(STDOUT)
    end

    def call(env)
      on_request('request', env)
      @app.call(env).on_complete do
        on_response('response', env)
      end
    end

    private

    def on_request(phase, env)
      @logger.info("#{phase} : #{env.method} - #{env.url}") if env.method and env.url
    end

    def on_response(phase, env)
      @logger.info("#{phase} : #{env.body}") if env.body 
    end    
  end
end
