class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(sign_up_params)
        if @customer.save
          redirect_to root_path
        else
          render 'new'
        end
  end

  def sign_up_params
    params.require(:customer).permit(:username, :address, :postalcode, :email, :password, :provinc)
  end

  def account_update_params
    params.require(:customer).permit(:username, :address, :postalcode, :email, :password, :provinc)
  end

end