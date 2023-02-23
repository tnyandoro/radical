class ApplicationController < ActionController::Base
    before_action :set_render_cart
    before_action :initialize_cart

    def set_render_cart
        @render_cart = true
    end

    def initialize
       @cart ||= Cart.find(id: session[:cart_id])

       if @cart.nil?
          @cart = Cart.create
          session[:cart:_id] = @cart.id
       end
    end
end
