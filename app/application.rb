class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    search_term = req.params["item"]
    
    if req.path.match(/items/)
      @@items.each do |i|
        if @@items.include?(i) && i == search_term
          resp.write "#{i.price}"
        elsif !@@items.include?(i)
          resp.write "Item not found"
          resp.status = 400
        end
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
