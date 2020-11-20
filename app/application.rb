require 'pry'
class Application
    def call(env)
        resp = Rack::Response.new
        
        time = Time.new

     
        if time.hour >= 12
            resp.write "Good Afternoon"
        end
        if time.hour < 12
            resp.write "Morning"
        end
        resp.finish
    end
end