class StoreController < ApplicationController
  def index
    #@products = Product.order(:title)
    @products = Product.page(params[:page]).per(3)
  end
end
