class TestJsonController < ApplicationController
  
  skip_before_action :verify_authenticity_token, :only => [:create]
  
  def index
    puts params.inspect
    render json: params
  end
end
