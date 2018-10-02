class OrderController < ApplicationController    
    skip_before_action :verify_authenticity_token, :only => [:create]
    
    def index
        @orders = Order.all        
    end
       
    def create
        @order = Order.new(:name => order_params['name'], :adress => order_params['adress']);    
        @order.pizzas = Pizza.find(order_params['pizzas']);  
        
        respond_to do |format|
            if @order.save
                format.html { redirect_to "/orders", notice: 'Your order was successfully created.' }
                format.json { render :show, status: :created, location: @order }
            else
                format.html { render :new }
                format.json { render json: @order.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def order_params
        params.permit(:name, :adress, pizzas: [])
    end
end
