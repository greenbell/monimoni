module Monimoni
  class MainController < Monimoni::ApplicationController
    def alive
      begin
        Monimoni::Model.find(1)
        render :json => {:hostname => Socket.gethostname}
      rescue ActiveRecord::RecordNotFound
        render :nothing => true, :status => 404
      end
    end
  end
end
