class Application
  
  resp = Rack::Response.new
  req = Rack::Request.new
  
  def call(env)
    if req.path.match(/items/)
      @@items.each do |i|
        resp.write "#{i}"
      end
    else
      
    end
  end
  
end