class CartController < ApplicationController
  def create
    logger.debug("Adding #{params[:id]} to cart.")
    id = params[:id].to_i
    session[:shopping_cart] << id
    product = Product.find(id)
    flash[:notice] = "✔ #{product.title} added to cart."
    redirect_to root_path
  end

  def destroy
    product = Product.find(params[:id])
    flash[:notice] ="#{product.title} removed from the cart."
    redirect_to root_path
  end
end
