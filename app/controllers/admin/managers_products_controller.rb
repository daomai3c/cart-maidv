class Admin::ManagersProductsController < ApplicationController
  before_filter :admin_user, only: [:index,:show,:new,:edit,:create,:update,:destroy]
  layout "admin"

  def index
  end

  def show
  end

  def new
    @product=Product.new
  end

  def create
    @product=Product.new(params[:product])
    if @product.save
      flash[:success]="Add product success !"
      redirect_to admin_catalog_path(@product.catalog_id)
    else
      @catalog=Catalog.find(params[:id])
      @product=@catalog.products.build
      render 'new'
    end
  end

  def edit
    @product=Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:success]='Updated Product Success'
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    catalog= Product.find(params[:id]).catalog
    Product.find(params[:id]).destroy
    flash[:success]="Delete success"
    redirect_to admin_catalog_path(catalog)
  end
end
