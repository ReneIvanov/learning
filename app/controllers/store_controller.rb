class StoreController < ApplicationController
	
	include CounterAccess

	before_action :set_counter, only: [:index] #before calling of index() method, call set_counter() method

  def index
  	@products = Product.order(:title)
  	@counter = session[:counter]
  end
end
