require 'pry'

class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      
      item_name = req.path.split("/items/").last
      song = @@items.find{|i| i. == song_title}
 
      resp.write song.artist
      
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
