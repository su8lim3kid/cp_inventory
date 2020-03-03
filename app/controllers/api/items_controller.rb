class Api::ItemsController < ApplicationController
before_action :set_customer
before_action :set_item, only: [:show, :update, :destroy]

  def index
    render json: @customer.items
  end

  def show
    render json: @items
  end

  def create
    item = @customer.items.new(item_params)

    if item.save
      render json:item
    else
      render json: item.errors, status: 422
    end
  end

  def update
    if @item.update(item_params)
      render json: @item
    else 
      render json: @item.errors, status: 422
    end
  end

  def destroy
    @item.destroy
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def set_customer
    @customer = Customer.find(params[:customer_id])
  end

  def item_params
    params.require(:item).permit(:name, :quantity, :pallets)
  end


end
