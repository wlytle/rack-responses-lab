class Application
  def call(env)
    resp = Rack::Response.new
    now = Time.now.hour

    now < 12 ? greeting = "Good Morning!" : greeting = "Good Afternoon!"
    resp.write greeting
    resp.finish
  end
end
