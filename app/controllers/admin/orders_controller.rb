class Admin::OrdersController < ApplicationController
  before_filter :admin_user , only: [:index, :destroy]
  layout "admin"
  def index
    @orders=Order.all
  end

  def destroy
    Order.find(params[:id]).destroy
    flash[:success]="Deleted order"
    redirect_to admin_orders_path
  end
end
