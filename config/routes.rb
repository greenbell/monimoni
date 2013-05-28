Monimoni::Engine.routes.draw do
  controller "main" do
    get '/alive', :to => :alive
  end
end
