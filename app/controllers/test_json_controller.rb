class TestJsonController < ApplicationController
   def index
    puts params.inspect
    render json: params
  end
  
  def new
    
  end
end
