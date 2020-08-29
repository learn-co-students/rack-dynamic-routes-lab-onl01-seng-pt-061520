class Application
    
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if reg.path.match(/items/)
            item = req.path.split(/items/).last
            if Item.find_by_name(item)
                item_object = find_by_name(item)
                resp.write item_object.price
            else
                resp.write "Item not found"
                resp.status = 400
            end
        else
            resp.write "Route not found"
            resp.status = 404
        end
    end


end
