class StoreController < ApplicationController
	
	skip_before_action :authorize

	include CurrentCart
	before_action :set_cart
	
	include CounterAccess
	before_action :set_counter, only: [:index] #before calling of index() method, call set_counter() method

  def index
  	if params[:set_locale]
		redirect_to store_index_url(locale: params[:set_locale])
	else
  		@products = Product.order(:title)
  		@counter = session[:counter]
  	end	
  end
end
