class SessionsController < ApplicationController

  def create
    customer = customer.find_by(email: params[:session][:email].downcase)
    if customer && customer.authenticate(params[:session][:password])
      session[:customer_id] = customer.id
      redirect_to root_path
    else
      flash.now[:alert] = "There was something wrong with your login details."
      render 'new'
    end
  end

  def destroy
    session[:customer_id] = nil
    flash[:notice] = "You have been logged out."
    redirect_to root_path
  end

end