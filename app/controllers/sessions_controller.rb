class SessionsController < ApplicationController

  def new

  end

  def create
    begin
      # your code that attempts to login the user

    customer = Customer.find_by(email: params[:session][:email].downcase)
    if customer && customer.authenticate(params[:session][:password_digest])
      session[:customer_id] = customer.id
      redirect_to root_path
    else
      flash.now[:alert] = "There was something wrong with your login details."
      render 'new'
    end

  rescue BCrypt::Errors::InvalidHash
    flash[:error] = 'We recently adjusted the way our passwords are stored. Please click the "forgot username or password?" link to re-establish your password. Thank you for your understanding!'
    redirect_to signup
  end
  end

  def destroy
    session[:customer_id] = nil
    flash[:notice] = "You have been logged out."
    redirect_to root_path
  end

end