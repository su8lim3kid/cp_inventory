class Api::CustomersController < ApplicationController
before_action :set_customer, only: [:show, :update, :destroy]

  def index 
    render json: Customer.all 
  end


  def show
    render json: @customer
  end


  def create
    customer = Customer.new(customer_params)

    if customer.save
      render json: customer
    else
      render json: customer.errors, status: 422
    end
  end

  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: 422
    end
  end

  def destroy
    @customer.destroy
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name)
  end

end
