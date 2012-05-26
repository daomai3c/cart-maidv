class CartsController < ApplicationController
  before_filter :signed_in_user , only: [:index ,:show,:new,:edit,:create,:update,:destroy]

  def index
    render 'edit'
  end
  def show

  end
  def new
    if params[:orders].nil?

    else
      session[:cart_number]=params[:orders]
    end
  end
  def create
    cart=session[:cart]
    cart_number=session[:cart_number]
    if cart.nil?
      redirect_to root_path
    else
      order=Order.new("user_id" => current_user.id)
      if order.save && !cart_number.nil?
        cart.each do |product_id|
          order_product=OrderProduct.new("order_id" => order.id, "product_id" => product_id, "number_product" => cart_number[product_id])
          if order_product.save
            flash['success']="Save Order Success"
          else
            order.destroy
            flash['error']="Error Save Order"
          end
        end
      else
        flash['error']="Error Save Order"
      end
      session[:cart]=nil
      session[:cart_number]=nil
      redirect_to root_path
    end
  end

  def edit
    product=Product.find(params[:id])
    products=session[:cart]
    if products.nil?
      products=[params[:id]]
      session[:cart]=products
    else
      unless products.include?(params[:id])
        products[products.length]=params[:id]
        session[:cart]=products
      end
    end
  end
  def update

  end
  def destroy
    session[:cart].delete(params[:id])
    redirect_to carts_path
  end
end
