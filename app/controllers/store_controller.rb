class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    #@products = Product.order(:title)
    @products = Product.page(params[:page]).per(3)
  end
end
