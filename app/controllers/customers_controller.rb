class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(sign_up_params)
        if @customer.save
          flash[:notice] = "User created"

         redirect_to root
        else
          render 'new'
        end
  end

  def sign_up_params
    params.require(:customer).permit(:username, :address, :postalcode, :email, :password_digest, :province_id)
  end

  def account_update_params
    params.require(:customer).permit(:username, :address, :postalcode, :email, :password_digest, :province_id)
  end

end