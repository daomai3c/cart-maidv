class Admin::ManagersCatalogsController < ApplicationController
  before_filter :admin_user, only: [:index,:show,:new,:edit,:create,:update,:destroy]
  layout "admin"

  def index
    @catalogs = Catalog.all
  end
  def show
    @catalog=Catalog.find(params[:id])
    @products=@catalog.products.paginate(page: params[:page])
  end
  def new
    @catalog = Catalog.new
  end

  def edit
    @catalog = Catalog.find(params[:id])

  end
  def create
    @catalog = Catalog.new(params[:catalog])
    if @catalog.save
      flash[:success]="Add Catalog Success"
      redirect_to admin_catalogs_path
    else
      render 'new'
    end
  end
  def update
    @catalog1 = Catalog.find(params[:id])
    if @catalog1.update_attributes(params[:catalog])
      flash[:success]='Catalog updated'
      redirect_to admin_catalogs_path
    else
      @catalog = Catalog.find(params[:id])
      render 'edit'
    end
  end
  def destroy
    @catalog = Catalog.find(params[:id]).destroy
    flash[:success]='Catalog deleted'
    redirect_to admin_catalogs_path
  end
end
