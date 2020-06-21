class Application
  
  resp = Rack::Response.new
  req = Rack::Request.new(env)
  
  def call(env)
    if req.path.match(/items/)
      @@items.each do |i|
        resp.write "#{i}"
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
  
end